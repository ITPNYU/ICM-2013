


void setup() {
  size(600, 600);
}

void draw() {
  background(255);
  drawCircle(300, 200, 300);
}

void drawCircle(float x, float y, float d) {
  stroke(0);
  noFill();
  ellipse(x, y, d, d);

  if (d > 4) {
    drawCircle(x+d/2, y, d/2);
    drawCircle(x-d/2, y, d/2);
    drawCircle(x, y+d/2, d/2);
    
  }
}

