float x = 320;
float y = 360;

void setup() {
  size(640, 360);
}

void draw() {
  background(255);

  noFill();
  stroke(0);
  ellipse(x, y, 100, 100);
  
  y = y - 2;
  x = x + random(-5,5);
}

