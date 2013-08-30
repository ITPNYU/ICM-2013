float x = 0;

void setup() {
  size(600, 300);
}

void draw() {
  background(0);
  x = 0;
  while (x < width) {
    x = x + 20;
    ellipse(x, 100, 16, 16);
  }
}

