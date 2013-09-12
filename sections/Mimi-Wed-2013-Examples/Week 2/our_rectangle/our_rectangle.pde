float topLeftCornerX;
float topLeftCornerY;
float topRightCornerX;
float topRightCornerY;
float bottomLeftCornerX;
float bottomLeftCornerY;
float bottomRightCornerX;
float bottomRightCornerY;
float sideLength;

void setup() {
  size(640, 801);
  background(255);
  
  // Scale the length of the side to the window height
  sideLength = height*.1;
}

void draw() {
  // Draw a red background
  background(255, 0, 0);
  //Update top left corner of our rect
  // Move the rectangle over the right one pixel every frame
  topLeftCornerX = topLeftCornerX + 1;
  // Attach the rectangle to the Y-position of the mouse
  topLeftCornerY = mouseY;
  // Define the rest of the variables relative to the top-left corner
  topRightCornerX = topLeftCornerX + sideLength;
  topRightCornerY = topLeftCornerY;
  bottomRightCornerX = topRightCornerX;
  bottomRightCornerY = topRightCornerY + (sideLength*.5);
  bottomLeftCornerX = topLeftCornerX;
  bottomLeftCornerY = bottomRightCornerY;
  
  // Print out the topLeftCornerX position to see what's going on!
  println(topLeftCornerX);
  
  // Make the lines 10 pixels thick
  strokeWeight(10);
  // Make the lines black
  stroke(255);
  
  // Draw the 4 sides of my rectangle
  // Draw the top line
  line(topLeftCornerX, topLeftCornerY, topRightCornerX, topRightCornerY);
  // Draw the right line
  line(topRightCornerX, topRightCornerY, bottomRightCornerX, bottomRightCornerY);
  // Draw the bottom line
  line(bottomRightCornerX, bottomRightCornerY, bottomLeftCornerX, bottomLeftCornerY);
  //Draw the left line
  line(bottomLeftCornerX, bottomLeftCornerY, topLeftCornerX, topLeftCornerY);
}

