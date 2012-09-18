// Click and Drag an object
// Daniel Shiffman <http://www.shiffman.net>

boolean dragging = false; // Is the object being dragged?
boolean rollover = false; // Is the mouse over the ellipse?

float x, y, w, h;          // Location and size
float offsetX, offsetY; // Mouseclick offset

void setup() {
  size(200, 200);
  
  x = 100;
  y = 100;
  w = 75;
  h = 50;
  smooth();
}

void draw() {
  background(255);

  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    rollover = true;
  } 
  else {
    rollover = false;
  }

  if (dragging) {
    x = mouseX + offsetX;
    y = mouseY + offsetY;
  }

  stroke(0);
  if (dragging) fill (50);
  else if (rollover) fill(100);
  else fill(175, 200);
  rect(x, y, w, h);
}

void mousePressed() {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    dragging = true;
    // If so, keep track of relative location of click to corner of rectangle
    offsetX = x-mouseX;
    offsetY = y-mouseY;
  }
}

void mouseReleased() {
  dragging = false;
}

