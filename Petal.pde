class Petal {
    float gravity = 0.098f;

    float totalFrame = 0.0f;
    float life = 30.0f;
    PVector position;
    float radian;
    PVector velocity;
     
    Petal (float x, float y, float r) {
	position = new PVector (x, y);
	radian = r;

	velocity = PVector.random2D();
	velocity.mult (3.0f);
    }

    boolean finished () {
	return totalFrame >= life;
    }
     
    void draw (float step) {
	float alphaFactor = 1.0f - (totalFrame / life) * (totalFrame / life);

	pushMatrix ();
	translate (position.x, position.y + totalFrame * totalFrame * gravity * 0.5f);
	rotateZ (radian);
	scale (0.2f);
	//	  rotate (frameCount / r);

	for (int i = 0; i < 5; i++) {
	    rotate (TWO_PI * 1 / 5);
	    noStroke ();
	    fill (255, 50, 80, 128 * alphaFactor);
	    stroke (225, 50, 80, 100);
	    bezier (0, 0, 35, -20, 35, -52, 8, -80);
	    bezier (0, 0, -35, -20, -35, -52, -8, -80);
	    stroke (225, 50, 80, 30);
	    triangle (0, 0, 8, -80, 0, -75);
	    triangle (0, 0, -8, -80, 0, -75);
	}
  
	fill (200, 50, 100, 200 * alphaFactor);
	ellipse (0, 0, 15, 15);
	popMatrix ();

	position.add (velocity);
	totalFrame += step;
    }
}
