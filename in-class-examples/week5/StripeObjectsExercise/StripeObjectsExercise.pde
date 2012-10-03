// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com


float x;     // horizontal location of stripe
float speed; // speed of stripe
float w;     // width of stripe

// A boolean variable keeps track of the object's state.
boolean mouse; // state of stripe (mouse is over or not?)

void setup() {
  size(640,360);
  x = 0; 
  speed = random(1); 
  w = random(10, 30);
  mouse = false;
}

// Draw stripe
void draw() {
  background(0);

  // Boolean variable determines Stripe color.
  if (mouse) { 
    fill(255);
  } 
  else {
    fill(255, 100);
  }

  noStroke();
  rect(x, 0, w, height);


  // Move stripe
  x += speed;
  if (x > width + 20) x = -20;

  // Check to see if point (mouseX,my) is inside the Stripe.
  // Left edge is x, Right edge is x + w
  if (mouseX > x && mouseX < x + w) {
    mouse = true;
  } 
  else {
    mouse = false;
  }
}

