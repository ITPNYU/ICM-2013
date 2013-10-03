// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 5-9: Simple Gravity

float x = 320;   // x location of square
float y = 20;     // y location of square

float speed = 0;   // speed of square

// A new variable, for gravity (i.e. acceleration).   
// We use a relatively small number (0.1) because this accelerations accumulates over time, increasing the speed.   
// Try changing this number to 2.0 and see what happens.
float gravity = 0.1; 

// Dampening effect on ySpeed
// Everytime the rect bounces
// it will lose 1/2 it's speed
float dampening = .5;



void setup() {
  size(640,360);

}

void draw() {
  background(255);

  // Display the square
  fill(175);
  stroke(0);
  rectMode(CENTER);
  rect(x,y,10,10);
  
  // Add speed to location.
  y = y + speed;
  
  // Add gravity to speed.
  speed = speed + gravity;
  
  // If square reaches the bottom
  // Reverse speed
  if (y > height) {
    // Multiplying by -0.95 instead of -1 slows the square down each time it bounces (by decreasing speed).  
    // This is known as a "dampening" effect and is a more realistic simulation of the real world (without it, a ball would bounce forever).
    speed = speed * -dampening;  
  }
  
  // PRINT OUT HTE absolute value of the speed
  // And the Y position
  println(abs(speed) + "\t" + y);
  
  // When the speed gets too low and the rect has essentially settled
  // at the bottom of the screen, reverse the dampening effect
  // by making the speed bigger on every bounce
  if( abs(speed) < 1 && y > height) {
    dampening = 1.25;
  }
  // When the speed gets too hight and the rect has flown off the top
  // of the screen dampen the speed on every "bounce"
  else if( abs(speed) > 5 && y < 0) {
    dampening = .5;
  }
  
}
