// Click and Drag an object
// Daniel Shiffman <http://www.shiffman.net>

boolean dragging = false; // Is the object being dragged?
boolean rollover = false; // Is the mouse over the ellipse?

float x, y, w, h;          // Location and size
float offsetX; // Mouseclick offset

void setup() {
  size(200, 200);
  
  x = 10;
  y = 25;
  w = 10;
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
  }
  x = constrain(x,10,width-10-w);

  stroke(0);
  line(10,50,width-10,50);

  stroke(0);
  if (dragging) fill (50);
  else if (rollover) fill(100);
  else fill(175);
  rect(x, y, w, h);
  
  fill(map(x,10,width-10-w,0,255));
  rect(50,100,100,50);
  
}

void mousePressed() {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    dragging = true;
    // If so, keep track of relative location of click to corner of rectangle
    offsetX = x-mouseX;
  }
}

void mouseReleased() {
  dragging = false;
}

