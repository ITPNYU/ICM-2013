int x = 0;
int y = 0;

void setup() {
  size(800, 400);
  background(255);
}

void draw() {

  float r = 20*sin(frameCount;
  ellipse(x,y,r,r);

  x += 20;
  if (x > width) {
    x = 0;
    y += 20;
  }

  if (y > height) {
    background(255);
    x = 0;
    y = 0;
  }
}

