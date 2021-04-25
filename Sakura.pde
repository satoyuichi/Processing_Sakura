Generator g = new Generator ();

void setup () {
//    size (640, 480, P3D);
    fullScreen (P3D);
    blendMode (ADD);
}

void draw () {
    background (0, 0, 0);

    g.draw (1.0f);
}

void mouseMoved() {
    float r = random (0.0f, TWO_PI);
    float f = noise (mouseX, mouseY) * 50.0f;

 	float s = (abs (pmouseX - mouseX) + abs (pmouseY - mouseY)) / 34.0f + 0.1f;
    g.generate (mouseX + f, mouseY + f, r, s);
}
