void setup() {
  size(400, 400);
}

void draw() {
  for (int x = 0; x < width; x+=50) {
    for (int y = 0; y < height; y +=50) {
      rect(x, y, 10, 10);
      ellipse(random(width), random(height), 10, 10);
    }
  }
}

