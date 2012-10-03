// Click and Drag an object
// Daniel Shiffman <http://www.shiffman.net>

boolean dragging = false; // Is the object being dragged?
boolean rollover = false; // Is the mouse over the ellipse?

float x, y, w, h;          // Location and size
float offsetX, offsetY;    // Mouseclick offset

void setup() {
  size(640, 360);
  
  // Starting location
  x = 100;
  y = 100;
  // Dimensions
  w = 75;
  h = 50;
  smooth();
}

void draw() {
  background(255);
  
  
  // Is mouse over object
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    rollover = true;
  } 
  else {
    rollover = false;
  }
  
  // Adjust location if being dragged
  if (dragging) {
    x = mouseX + offsetX;
    y = mouseY + offsetY;
  }

  stroke(0);
  // Different fill based on state
  if (dragging) {
    fill (50);
  } else if (rollover) {
    fill(100);
  } else {
    fill(175, 200);
  }
  rect(x, y, w, h);
}

void mousePressed() {
  // Did I click on the rectangle?
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    dragging = true;
    // If so, keep track of relative location of click to corner of rectangle
    offsetX = x-mouseX;
    offsetY = y-mouseY;
  }
}

void mouseReleased() {
  // Quit dragging
  dragging = false;
}

