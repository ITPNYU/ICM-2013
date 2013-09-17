float a = 0;

void setup() {
  size(400,400,P3D); 
}

void draw() {
  background(255);

  // SAVE
  pushMatrix();
  translate(100,100);
  scale(5);
  rotateX(a);
  stroke(0);
  fill(175);
  rectMode(CENTER);
  rect(0,0,50,25);
  // RESTORE
  popMatrix();
  
  translate(300,50);
  rotate(-a*2);
  rect(0,0,25,50);
  
  
  a = a + 0.02;
  
  
}
