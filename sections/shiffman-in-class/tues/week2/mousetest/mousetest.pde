
void setup() {
  size(640, 360);
}

void draw() {
  background(float(frameCount));


  ellipse(mouseX, mouseY, 16, 16);
}

void mousePressed() {
  background(255);
}

