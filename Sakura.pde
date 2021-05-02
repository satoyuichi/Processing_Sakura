ArrayList<Generator> gArray = new ArrayList<Generator> ();
Generator g = new Generator ();

void setup () {
//    size (640, 480, P3D);
    fullScreen (P3D);
    blendMode (ADD);
	noCursor ();
}

void draw () {
    background (0, 0, 0);

	for (int i = gArray.size() - 1; i >= 0; i--) {
	    Generator generator = gArray.get (i);
		if ((frameCount % 3) == 0) {
			generator.generate ();
		}
	    generator.draw (1.0f);

	    if (generator.finished ()) {
			gArray.remove (i);
	    }
	}

    g.draw (1.0f);
}

void mouseMoved() {
    float f = noise (mouseX, mouseY) * 50.0f;
 	float s = (abs (pmouseX - mouseX) + abs (pmouseY - mouseY)) / 34.0f + 0.1f;

	g.setPosition (mouseX + f, mouseY + f);
	g.setScale (s);
    g.generate ();
}

void mouseClicked () {
	Generator generator = new Generator ();
	generator.setLife (60.0f * random (2.0f, 3.0f));
	generator.setPosition (mouseX, mouseY);
	generator.setScale (random (0.2f, 0.8f));

	gArray.add (generator);
}

void keyPressed () {
	if (key == 's' || key == 'S') {
		saveFrame ("ss_##.png");
	}
}
