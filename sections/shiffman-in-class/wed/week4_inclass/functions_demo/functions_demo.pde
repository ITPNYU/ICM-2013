

void setup() {
  size(400, 400); 
  background(255);
}

void draw() {
  //flower(100,100);
  //flower(300,100);
}

void mousePressed() {
  flower(mouseX, mouseY);
}

void flower(float x, float y) {
  fill(0, 0, 255, 120);

  ellipse(x, y, 60, 60);
  ellipse(x, y-20, 30, 30);
}

