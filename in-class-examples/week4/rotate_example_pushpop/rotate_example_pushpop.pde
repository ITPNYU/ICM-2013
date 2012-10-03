float angle = 0;

void setup() {
  size(640, 360);
  smooth();
}

void draw() {
  background(255); 
  stroke(0);
  fill(100);
  rectMode(CENTER);
  
  pushMatrix();  // save the "current transformation state"
  translate(width/2,height/2);
  rotate(angle);
  rect(0,0, 100, 50);
  popMatrix();  // restore the last "push"
  
  pushMatrix();
  translate(150,30);
  rotate(-angle*2);
  rect(0,0,40,16);
  popMatrix();

  angle = angle + 0.05;

}

