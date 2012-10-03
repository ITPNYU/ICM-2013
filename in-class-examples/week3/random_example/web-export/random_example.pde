

void setup() {
  size(640, 360);
  smooth(); 
  background(0);
}

void draw() {

  float x = random(0, width);
  float y = random(0, height);
  float r = random(255);
  float g = random(255);
  float b = random(255);
  float diam = random(8, 32);
  fill(r, g, b, 175);
  ellipse(x, y, diam, diam);
}


