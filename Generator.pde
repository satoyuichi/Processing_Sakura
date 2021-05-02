class Generator {
    ArrayList<Petal> petals;
	float totalFrame = 0.0f;
	float life = 0.0f;

	PVector position = new PVector (0.0f, 0.0f, 0.0f);
	PVector velocity;
	float scale = 1.0f;
	color rgb;

	void setLife (float l) {
		life = l;
	}

	void setPosition (float x, float y) {
		position.x = x;
		position.y = y;
	}

	void setScale (float s) {
		scale = s;
	}

	boolean undead () {
		return life == 0.0f;
	}
	
    boolean finished () {
		if (undead ()) {
			return false;
		}
		
		return (totalFrame >= life) && (petals.size() == 0);
    }

	boolean generatable () {
		return undead () || (totalFrame <= life);
	}

    Generator () {
		velocity = new PVector (random (-5.0f, 5.0f), random (-5.0f, -13.0f));
		float val = random (13, 55);
		rgb = color (196 + val, 50 + val, 80 + val);
		petals = new ArrayList<Petal>();
    }

    void generate () {
		if (generatable () == false) {
			return;
		}
		
		Petal p = new Petal (position.x, position.y, random (0.0f, TWO_PI), scale);

		p.setColor (rgb);

		petals.add (p);
    }
    
    void draw (float step) {
		for (int i = petals.size() - 1; i >= 0; i--) {
			Petal petal = petals.get (i);
			petal.draw (step);
			if (petal.finished ()) {
				petals.remove (i);
			}
		}

		position.add (velocity);
		position.y += totalFrame * totalFrame * 0.098f * 0.02f;
		totalFrame += step;
    }
}
