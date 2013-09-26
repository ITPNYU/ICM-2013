float ballX = 0;
float ballXSpeed = 10;
float rectXSpeed = 5;
float rectX = 10;
void setup() {
  size(800, 800);
}
void draw() {
  background(0);

  // Move ball
  ballX+=ballXSpeed;
  // Check to see if ball is offscreen
  if (ballX > width+100 || ballX < 0) {
    ballXSpeed *=-1;
  }
  // Draw the ball
  ellipse(ballX, height/3, 100, 100);

  // Move rect
  rectX +=rectXSpeed;
  if (rectX > width+100 || rectX < 0) {
    rectXSpeed *=-1;
  }

  rect(rectX, 2*height/3, 100, 100);
}

boolean isOffScreen(float x) {
  if (x > width+100 || x < 0) {
    return true;
  }
  else {
    return false;
  }
}

void mousePressed() {
  drawSnowman(mouseX, mouseY, mouseX, mouseY);
}

void drawSnowman(float xPos, float yPos, float w, float h) {
  float randomizedWidth = w*random(1);
  float randomizedHeight = h*random(1);
  
  // Draw head
  ellipse(xPos, yPos-randomizedHeight/2, randomizedWidth/5, randomizedHeight/5);
  // Draw body
  ellipse(xPos, yPos, randomizedWidth, randomizedHeight);
}

