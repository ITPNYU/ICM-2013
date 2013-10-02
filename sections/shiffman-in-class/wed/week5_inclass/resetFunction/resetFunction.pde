float x;
float y;

void setup() {
  size(400, 400);
  reset();
}

void draw() {
  background(0);

  ellipse(x, y, 10, 10);
  x++;
  y++;
}

void mousePressed() {
  reset();
}

void reset() {
  x = 0;
  y = 0;
} 

