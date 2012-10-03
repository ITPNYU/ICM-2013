float y;
float ballX;
float ballY;
float speedX;
float speedY;
float R;
float G;
float B;
float secondY;
float thirdY;
float fourthY;
float sspeedY;
float h;
float i;

void setup() {
  size (500, 500);
  y = 0;
  ballX = 250;
  ballY = -100;
  speedX = 2;
  speedY = 3;
  R = 255;
  G = 255;
  B = 255;
  secondY = 0;
  thirdY = 0;
  fourthY = 0;
  h = 60;
  i = 60;
}

void draw() {
  background(255);

  fill(R, G, B, 245);
  strokeWeight(4);
  ellipse(ballX, ballY, h, i);

  // Move ballY down
  ballY = ballY + speedY;

  // if ballY reaches bottom
  if (ballY >= 260) {
    // Keep ballY at bottom
    //background(255,0,0);
    ballY = 260;
    // Draw the second ball
    ellipse(ballX, secondY, h, i);
    // Move the secondBall down
    secondY = secondY + speedY;
    if (secondY >= 220) {
      secondY = 220;
      ellipse(ballX-6, thirdY, h, i);
      thirdY = thirdY + speedY;
    }
  }
}

