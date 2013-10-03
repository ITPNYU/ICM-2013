void setup() {
  size(500, 500);
  fill(255);
  stroke(255);
}

void draw() {
  background(0);
  for (int x = 0; x < width; x++) {
    // Draw lines between every 30-40 pixels
    if (x%30 < 10) {
      // Only draw a line every other pixel
      if (x%2==0) {
        line(x, 0, x, height);
      }
    }
  }
}

