
int numLines = 1;

float x = 0;
float y = 0;     // y location of square

float xSpeed = 1;
float ySpeed = 0;   // speed of square

// A new variable, for gravity (i.e. acceleration).   
// We use a relatively small number (0.1) because this accelerations accumulates over time, increasing the speed.   
// Try changing this number to 2.0 and see what happens.
float gravity = 0.1; 

// Dampening effect on ySpeed
// Everytime the rect bounces
// it will lose 5% its speed
float dampening = .95;

void setup() {
  size(640, 360);
}

void draw() {
  background(255);
  numLines++;
  
  // Add speed to location.
  y = y + ySpeed;
  x = x + xSpeed;
  
  if(x < 0 || x > width) {
   xSpeed *= -1; 
  }
  
  // Add gravity to speed.
  ySpeed = ySpeed + gravity;
  
  // If square reaches the bottom
  // Reverse speed
  if (y > height) {
    // Multiplying by -0.95 instead of -1 slows the square down each time it bounces (by decreasing speed).  
    // This is known as a "dampening" effect and is a more realistic simulation of the real world (without it, a ball would bounce forever).
    ySpeed = ySpeed * -dampening;  
  }
    
  // When the speed gets too low and the rect has essentially settled
  // at the bottom of the screen, reverse the dampening effect
  // by making the speed bigger on every bounce
  if( abs(ySpeed) < 1 && y > height) {
    dampening = 1.05;
  }
  // When the speed gets too hight and the rect has flown off the top
  // of the screen dampen the speed on every "bounce"
  else if( abs(ySpeed) > 5 && y < 0) {
    dampening = .95;
  }
  
  for (int i = 0; i < numLines; i+=5) {
    // Display the square
    fill(175);
    stroke(175);
    rectMode(CENTER);
    line(cos(i)*x, sin(i)*y, i, height);
  }
}

