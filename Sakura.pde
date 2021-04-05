void setup(){
size(640, 480);
}

void draw(){
  
  background(255,250,250);
  PImage img = loadImage("pink.jpg");
  image(img, 0, 0);
  blend(img, 0, 0, 33, 100, 67, 0, 33, 100, LIGHTEST);

  sakura(400,200,30,150);
  sakura(100,300,-40,100);
  sakura(380,400,60,50);
  sakura(280,500,70,110);
  sakura(580,100,20,110);
  sakura(100,100,-20,10);
  sakura(500,300,-20,10);
  sakura(250,250,-30,80);
  sakura(250,100,-80,180);
  sakura(550,470,-80,180);
  sakura(100,450,-20,10);
  sakura(420,50,-20,10);
  
  if (keyPressed == true) {
    float ma = random(50);
    mousesakura(400,200,100,ma);
    mousesakura(100,300,200,ma);
    mousesakura(380,400,150,ma);
    mousesakura(280,500,-120,ma);
    mousesakura(580,100,220,ma);
    mousesakura(100,100,220,ma);
    mousesakura(500,300,220,ma);
    mousesakura(250,250,220,ma);
    mousesakura(250,100,220,ma);
    mousesakura(550,470,220,ma);
    mousesakura(100,450,220,ma);
    mousesakura(420,50,220,ma);
  }  
}

void sakura(float x,float y,float r,float a){
  
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

void mousesakura(float mx,float my,float mr,float ma){
  
  pushMatrix();
  translate(mx,my);
  rotate(frameCount/mr);
  
  for(int i = 0;i < 5;i++){
    
    rotate(TWO_PI * 1/5);
    noStroke();
    fill(255,153,204,ma);
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
