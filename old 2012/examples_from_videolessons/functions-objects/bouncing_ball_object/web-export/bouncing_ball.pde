
float x;
float xspeed = 5;
float diam = 16;

void setup() {
  size(320, 240);
  x = 0;
}

void draw() {
  background(255);
  fill(127);
  stroke(0);
  ellipse(x, height/2, diam, diam);
  
  if (x > width || x < 0) {
    xspeed = xspeed * -1;
  }
  
  x = x + xspeed;
}


