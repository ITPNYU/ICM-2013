// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Button location and size
float x = 100;   
float y = 100;   
float w = 75;   
float h = 50;   

// Is the button on or off?
boolean on = false;  


void setup() {
  size(600, 200);
}

void draw() {
  background(255);
  stroke(0);
  // The color changes based on the state of the button
  if (on) {
    fill(175);
  } else {
    fill(0);
  }
  rect(x, y, w, h);
}

void mousePressed() {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    on = !on;
  }
}

