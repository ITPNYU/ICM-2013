

void setup() {
  size(400, 400);
}

void draw() {
  background(255);
  for (int x =0; x < width; x += 20) {
    for (int y = 0; y < height; y += 20) {
      float force = dist(mouseX, mouseY, x, y);
      force = map(force, 0, 400, -10, 10);
      line(x, y, x-force, y+force);
    }
  }
}

