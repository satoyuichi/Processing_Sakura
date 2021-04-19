class Petal {
     float totalFrame = 0.0f;
     float life = 60.0f;
     PVector position;
     
     Petal (float x, float y) {
	  position = new PVector (x, y);
     }

     boolean finished () {
	  return totalFrame >= life;
     }
     
     void draw (float step) {
	  pushMatrix ();
	  translate (position.x, position.y);
//	  rotate (frameCount / r);
  
	  for (int i = 0; i < 5; i++) {
	       rotate (TWO_PI * 1 / 5);
	       noStroke ();
	       fill (255, 50, 80, 255);
	       stroke (225, 50, 80, 100);
	       bezier (0, 0, 35, -20, 35, -52, 8, -80);
	       bezier (0, 0, -35, -20, -35, -52, -8, -80);
	       stroke (225, 50, 80, 30);
	       triangle (0, 0, 8, -80, 0, -75);
	       triangle (0, 0, -8, -80, 0, -75);
	  }
  
	  fill (200, 50, 100, 200);
	  ellipse (0, 0, 15, 15);
	  popMatrix ();

     	  totalFrame += step;
     }
}
