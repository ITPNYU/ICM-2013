// A location
float x;
float y;

float d;

void setup() {
  size(600, 360);
  // Start in the center
  x = width/2;
  y = height/2;
}

void draw() {
  background(255);

  // Move randomly
  x += random(-2, 2);
  y += random(-2, 2);

  // Stay in the window
  // See: http://processing.org/reference/constrain_.html
  x = constrain(x, 0, width);
  y = constrain(y, 0, height);
  
  // dist() gives us the distance between two points
  d = dist(x,y,mouseX,mouseY);
  
  // Draw the square
  stroke(0);
  // Square is colored according to that distance
  // Could you use the value to affect the square's speed instead?
  fill(d);
  rect(x, y, 24, 24);
}

