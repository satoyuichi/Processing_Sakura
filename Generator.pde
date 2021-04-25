class Generator {
    ArrayList<Petal> petals;
	color rgb;

    Generator () {
	petals = new ArrayList<Petal>();
    }

    void generate (float x, float y, float r, float s) {
		Petal p = new Petal (x, y, r, s);

		float val = random (13, 55);
	rgb = color (196 + val, 50 + val, 80 + val);
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
    }
}
