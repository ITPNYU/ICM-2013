float x = 50;

void setup() {
  size(400, 300);
}

void draw() {
  background(255);
  fill(0);
  ellipse(x, 150, 50, 50);
  x = x + 1;
}

void mousePressed() {
  x = 0; 
}

