float x = 0;
float y = 0;

void setup() {
  size(400, 300);
  background(255);
}

void draw() {
  x = random(mouseX-10, mouseX+10);
  y = random(mouseY-10, mouseY+10);

  fill(0,50);
  ellipse(x, y, 4, 4);
}

