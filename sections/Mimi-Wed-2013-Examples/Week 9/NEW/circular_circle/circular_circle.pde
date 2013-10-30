float t;
float x;
float y;
float radius;

void setup() {
  size(400, 400);  
}


void draw() {
  pushMatrix();
  translate(width/2, height/2);
  rotate(t*10);
  x = cos(t)*radius;
  y = sin(t)*radius;
  
  ellipse(x,y, 10, 10);
  t+=0.01;
  radius+=sin(t)*cos(t);
  popMatrix();
  
}
