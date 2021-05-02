class Petal {
    float gravity = 0.098f * 0.5f;

    float totalFrame = 0.0f;
    float life = 30.0f;
	float scale = 0.2f;
    PVector position;
    PVector velocity;
	PVector rotation;
	PVector addRotation;

	color rgb;
     
    Petal (float x, float y, float r, float s) {
		position = new PVector (x, y);
		rotation = new PVector (r, r, r);

		velocity = PVector.random2D();
		velocity.mult (3.0f + s * 3.0f);

		addRotation = new PVector (0, 0, random (-PI, PI));
		addRotation.mult (0.05f);

		scale = s;
    }

    boolean finished () {
		return totalFrame >= life;
    }

	void setColor (color c) {
		rgb = c;
	}

    void draw (float step) {
		float alphaFactor = 1.0f - (totalFrame / life) * (totalFrame / life);

		pushMatrix ();
		translate (position.x, position.y + totalFrame * totalFrame * gravity);

		rotation.add (addRotation);
		rotateZ (rotation.z);
		scale (scale);

		for (int i = 0; i < 5; i++) {
			rotate (TWO_PI * 1 / 5);
			noStroke ();
			fill (rgb, 128 * alphaFactor);
			stroke (225, 50, 80, 100);
			bezier (0, 0, 35, -20, 35, -52, 8, -80);
			bezier (0, 0, -35, -20, -35, -52, -8, -80);
			stroke (225, 50, 80, 30);
			triangle (0, 0, 8, -80, 0, -75);
			triangle (0, 0, -8, -80, 0, -75);
		}
  
		fill (rgb, 200 * alphaFactor);
		ellipse (0, 0, 15, 15);
		popMatrix ();

		position.add (velocity);
		totalFrame += step;
    }
}
