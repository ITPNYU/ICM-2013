
int circleX;

void setup() {
  size(320, 240);
  circleX = 0;
}

void draw() {
  background(255);
  fill(127);
  stroke(0);
  ellipse(circleX,height/2, 16, 16);
}

