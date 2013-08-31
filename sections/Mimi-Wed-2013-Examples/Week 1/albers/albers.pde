// Keep track of red, green, blue values
// and the speed at which each is changing
float br, bg, bb, brSpeed, bgSpeed, bbSpeed;

// Keep track of foreground rgb values and speeds
float fR, fG, fB, fRSpeed, fGSpeed, fBSpeed;

// Multiplier to modulate the speed
float mult;

// Position the foreground rectangle
float centerX, centerY;

void setup() {
  size(400, 400);
  
  // Center the rectangle
  centerX = width/2;
  centerY = height/2;
  
  // Draw the rectangle from the center point
  rectMode(CENTER);
  noStroke();
  
  // Initialize colors randomly
  // Set all speeds to .1
  br = random(255);
  bg = random(255);
  bb = random(255);
  brSpeed = .1;
  bgSpeed = brSpeed;
  bbSpeed = brSpeed;

  fR = random(255);
  fG = random(255);
  fB = random(255);
  fRSpeed = brSpeed;
  fGSpeed = brSpeed;
  fBSpeed = brSpeed;  
}


void draw() {
  // Modulate the speed according to a sine wave
  mult = sin(frameCount*.001) + 2;
  
  // Change the background rgb values
  br+=brSpeed*mult;
  bg+=bgSpeed*mult;
  bb+=bbSpeed*mult;

  // Turn color value around when it hits the top/bottom
  if (br > 255 || br < 0)
    brSpeed *= -1;
  if (bg > 255 || bg < 0)
    bgSpeed *= -1;
  if (bb > 255 || bb < 0)
    bbSpeed *= -1;

  // Set the background color
  background(br, bg, bb);
  
  // 1/2 the speed multiplier
  mult*= .5;
  
  // Change the foreground color
  fR+=fRSpeed*mult;
  fG+=fGSpeed*mult;
  fB+=fBSpeed*mult;

  // Turn color value around when it hits the top/bottom
  if (fR > 255 || fR < 0)
    fRSpeed *= -1; 
  if (fG > 255 || fG < 0)
    fGSpeed *= -1;
  if (fB > 255 || fB < 0)
    fBSpeed *= -1;
  
  // Set the fill color of the foreground rect
  fill(fR, fG, fB);
  
  // Draw the rect
  rect (centerX, centerY, centerX, centerY);
}

