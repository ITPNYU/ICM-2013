float numCircles = 1;
float dir = 1;

void setup() {
  size(400, 400);
}

void draw() {
  // Erase everything
  background(0);
  print("NEW FRAME " + frameCount + " \t");

  // Set up a counter
  // Start it out at zero
  // Count up one-by-one to whatever the numCircles is this frame
  for (int i = 0; i < numCircles; i++) {
    // If the counter is still less than numCircles, draw a 10-pixel ellipse
    // in some random location on the right-half of the window
    ellipse(random(width/2, width), random(height), 10, 10);
  }

  // Change the number of circles
  numCircles += dir; // numSpeed

  // If the number of circles is greater than 100 or less than O, "turn around"
  if (numCircles > 100 || numCircles < 0) {
    dir *= -1;
  }

  println("NUM CIRCLES: " + numCircles);
}

