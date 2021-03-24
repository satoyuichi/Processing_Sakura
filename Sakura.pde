int x = 300;
int y = 300;
float r = 30.0;
int a = 150;

void setup(){
size(600,600);
}

void draw(){
  background(240,255,255);
  pushMatrix();
  translate(x,y);
  rotate(frameCount/r);

  for(int i = 0;i < 5;i++){
    rotate(TWO_PI * 1/5);
    noStroke();
    fill(255,50,80,a);
    stroke(225,50,80,100);
    bezier(0,0,35,-20,35,-52,8,-80);
    bezier(0,0,-35,-20,-35,-52,-8,-80);
    stroke(225,50,80,30);
    triangle(0,0,8,-80,0,-75);
    triangle(0,0,-8,-80,0,-75);
  }
  fill(200,50,100,200);
  ellipse(0,0,15,15);
  popMatrix();
}
