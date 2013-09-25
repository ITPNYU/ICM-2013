
void setup() {
  size(400, 400);
}

void draw() {
  background(255);

  int x = 0;
  while (x < 300) {
    stroke(0);
    line(x, 0, x, height);
    x = x + 10;
  }
}

