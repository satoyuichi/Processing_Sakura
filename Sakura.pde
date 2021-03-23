import processing.opengl.*;
 
float rot=0;
void setup(){
    size(400,400,P3D);
    frameRate(60);
    fill(63,127,255);
    stroke(255);
    rectMode(CENTER);
}

void draw(){
    background(0);
    translate(width/2,height/2);
    rotateX(rot);
    rect(0,0,200,200);
    rot += 0.06;
}
//GitTest
