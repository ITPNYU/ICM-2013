// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// An array of stripes
Stripe s1;
Stripe s2;

void setup() {
  size(640, 360);
  s1 = new Stripe();
  s2 = new Stripe();
}

void draw() {

  background(100);
  // Move and display all Stripe objects
  s1.rollover(mouseX, mouseY); // Passing the mouse coordinates into an object.
  s1.move();
  s1.display();

  s2.rollover(mouseX, mouseY); // Passing the mouse coordinates into an object.
  s2.move();
  s2.display();
}

