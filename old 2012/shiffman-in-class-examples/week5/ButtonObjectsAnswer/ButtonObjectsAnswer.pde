// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Two buttons
Button b1;
Button b2;

void setup() {
  size(600, 200);
  smooth();
  // A loop to evenly space out the buttons along the window
  b1 = new Button(100, height/2-25, 50, 50); 
  b2 = new Button(300, height/2-25, 50, 50);
}

void draw() {
  background(255);
  b1.display();
  b2.display();
}


void mousePressed() {
  b1.click(mouseX,mouseY);
  b2.click(mouseX,mouseY);
}

