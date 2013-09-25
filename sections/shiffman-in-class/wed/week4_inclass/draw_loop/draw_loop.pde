int x = 0;

void setup() {
  size(400, 400);
}

void draw() {
  background(255);

  stroke(0);
  if (x < 300) {
    line(x, 0, x, height);
    x = x + 10;
  }
}

