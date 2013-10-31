/**
 * Bouncing Ball with Vectors 
 * by Daniel Shiffman.  
 * 
 * Demonstration of using vectors to control motion of body
 * This example is not object-oriented
 * See AccelerationWithVectors for an example of how to simulate motion using vectors in an object
 */

//import peasy.*;
//PeasyCam cam;

PVector location;  // Location of shape
PVector velocity;  // Velocity of shape

void setup() {
  size(400, 400, P3D);
  smooth();
  // Set x,y,z of ball at the beginning of the sketch
  location = new PVector(width/2, height/2, 0);

  // Set initial x,y,z speed of ball
  velocity = new PVector(1.5, 2.1, 1.7);

//  cam = new PeasyCam(this, 200);
//  cam.setMinimumDistance(-100);
//  cam.setMaximumDistance(100);
}

void draw() {
  background(0);
  // Add velocity to the location.
  location.add(velocity);

  // Bounce off edges in all 3 dimensions
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if (location.y > height || location.y < 0) {
    // We're reducing velocity ever so slightly 
    // when it hits the bottom of the window
    velocity.y = velocity.y * -1;
  }

  if (location.z > 100 || location.z < -100) {
    // We're reducing velocity ever so slightly 
    // when it hits the bottom of the window
    velocity.z = velocity.z * -1;
  }

  // Draw the 3D box
  pushMatrix();
  translate(width/2, height/2, 100);  
  stroke(255, 0, 0);
  noFill();
  box(400);
  popMatrix();

  // Draw the ball in 3D space
  pushMatrix();
  // Translate to the current z-plane of the ball
  translate(0, 0, location.z);
  stroke(255);
  strokeWeight(2);
  fill(127);
  ellipse(location.x, location.y, 48, 48);
  popMatrix();
}

