
float x = 0;
float y = 0;
float xspeed = 3.1;
float yspeed = 1.2;

void setup() {
  size(320, 240);
}

void draw() {
  background(255);
  displayBall();
  moveBall();
  checkEdges();
} 

void drawHat() {
  strokeWeight(5);
  stroke(0);
  line(x-50,y-20,x+50,y-20);
}

void displayBall() {
  fill(127);
  stroke(0);
  strokeWeight(2);
  ellipse(x, y, 32, 32);
  drawHat();
}

void moveBall() {
  x = x + xspeed;
  y = y + yspeed;
}

void checkEdges() {
  if (x > width || x < 0) {
    xspeed = xspeed * -1;
  }

  if (y > height || y < 0) {
    yspeed = yspeed * -1;
  }
}

