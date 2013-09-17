
// You can declare more than one variable in a line
float x, y;
float r, g, b;
float d;

void setup() {
  size(600, 360);
  background(255);
}

void draw() {

  // Set all values randomly
  r = random(255);
  g = random(255);
  b = random(255);

  x = random(width);
  y = random(height);

  d = random(2, 20);
  // Draw one circle per frame
  noStroke();
  fill(r, g, b, 100);
  ellipse(x, y, d, d);
}

