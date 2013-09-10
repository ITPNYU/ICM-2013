// Complicated Knob
// Daniel Shiffman <http://www.shiffman.net>

boolean dragging = false; // Is the slider being dragged?
boolean rollover = false; // Is the mouse over the slider?

// Circle variables for knob
float x = 160;
float y = 180;
float r = 40;

// Knob angle
float angle = 0;

// Offset angle for turning knob
float offsetAngle = 0;

void setup() {
  size(640, 360);
}

void draw() {
  background(255);


  // Is it being dragged?
  if (dragging) {
    float dx = mouseX - x;
    float dy = mouseY - y;
    float mouseAngle = atan2(dy, dx);
    angle = mouseAngle - offsetAngle;
  }

  // Fill according to state
  if (dragging) {
    fill (175);
  } 
  else {
    fill(255);
  }
  // Draw ellipse for knob
  pushMatrix();
  translate(x, y);
  rotate(angle);
  ellipse(0, 0, r*2, r*2);
  line(0, 0, r, 0);
  popMatrix();
  fill(0);


  // Map is an amazing function that will map one range to another!
  // Here we take the slider's range and map it to a value between 0 and 255
  // Our angle is either between
  float calcAngle = 0; 
  if (angle < 0) {
    calcAngle = map(angle, -PI, 0, PI, 0);
  } 
  else if (angle > 0) {
    calcAngle = map(angle, 0, PI, TWO_PI, PI);
  }

  textAlign(CENTER);
  text(int(degrees(calcAngle)), x, y+r+20);

  float b = map(calcAngle, 0, TWO_PI, 0, 255);
  fill(b);
  rect(320, 90, 160, 180);
}

void mousePressed() {
  // Did I click on slider?
  if (dist(mouseX, mouseY, x, y) < r) {
    dragging = true;
    // If so, keep track of relative location of click to corner of rectangle
    float dx = mouseX - x;
    float dy = mouseY - y;
    offsetAngle = atan2(dy, dx) - angle;
  }
}

void mouseReleased() {
  // Stop dragging
  dragging = false;
}

