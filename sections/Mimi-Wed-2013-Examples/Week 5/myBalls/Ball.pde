class Ball {
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float counter=0;

  // This is the constructor
  // Where you construct your ball
  Ball(float tempX, float tempY, float tempXSpeed, float tempYSpeed) {
    x=tempX;
    y=tempY;
    xSpeed = tempXSpeed;
    ySpeed = tempYSpeed;
  }
  // Functions
  // Stuff the ball knows how to do
  void display() {
    stroke(0);
    fill(random(255), random(255), random(255));
    ellipse(x, y, 20, 20);
  }

  // Move the ball!
  void moveBall() {
    x+=xSpeed;
    y+=ySpeed;
  }

  // Bounce the ball
  void bounceBall() {
    if (x > width || x < 0) {
      // turn around in the x-dir
      xSpeed *= -1;
      count();
    } 

    if (y > height || y < 0) {
      // turn around in the y-dir
      ySpeed *= -1;
      count();
    }
  }

  void count() {
    counter++;
  }
  
  // Use modulo to create intervals of 100
  // Stay alive for the first 20 counts
  // Then die for 80 counts
  boolean isStillAlive() {
    if (counter%100 < 20) {
      println("IS ALIVE: " + counter);
      return true;
    }
    // While dead, reset the x,y position of the Ball to the center
    println("IS DEAD: " + counter);
    x = width/2;
    y = height/2;
    return false;
  }
}

