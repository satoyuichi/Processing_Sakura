class Generator {
    ArrayList<Petal> petals;

    Generator () {
	petals = new ArrayList<Petal>();
    }

    void generate (float x, float y, float r) {
	Petal p = new Petal (x, y, r);
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
