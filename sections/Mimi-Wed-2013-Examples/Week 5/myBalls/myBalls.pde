Ball myBall1;
Ball myBall2;
void setup() {
  size(800, 800);
  myBall1 = new Ball(0, 0, 42, 75);
  myBall2 = new Ball(23, 123, 5, 3);
}


void draw() {
  background(0);
  // i = counter for the number of balls we've created
  // start counter at zero
  // stop the counter right before 20
  // add 1 to the counter
  myBall1.display();

  myBall1.moveBall();

  if (myBall1.isStillAlive()) {
    myBall1.bounceBall();
  }
  else {
    // Keep counting
    myBall1.count();
  }  

  myBall2.display();

  myBall2.moveBall();
  myBall2.bounceBall();
}

