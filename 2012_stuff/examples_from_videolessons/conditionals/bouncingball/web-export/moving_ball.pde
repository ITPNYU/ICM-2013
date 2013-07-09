
float circleX;

void setup() {
  size(640, 360);
  circleX = 0;
}

void draw() {
  background(51);
  fill(102);
  stroke(255);
  ellipse(circleX,height/2, 32, 32);
  circleX = circleX + 2;
}


