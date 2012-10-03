float x;       // x location of square 
float y;       // y location of square 
float speed;   // speed of square 
float w;       // size
// Global gravity variable
float gravity = 0.1;  

void setup() { 
  size(640, 360); 
  x = width/2;
  y = 0;
  w = 32;
} 

void draw() { 
  background(255); 

  fill(175); 
  strokeWeight(2);
  stroke(0); 
  ellipse(x, y, w, w); 
  // Add speed to location
  y = y + speed; 

  // Add gravity to speed
  speed = speed + gravity; 

  // If square reaches the bottom 
  // Reverse speed 
  if (y > height) { 
    speed = speed * -0.95;
  }
} 

