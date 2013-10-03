float bird1X = 200;
float bird1Y = 200;
float bird2X = 100;
float bird2Y = 100;
float changeX1 = 2.5;
float changeX2 = 5;
float changeY1 = 6;
float changeY2 = 3.5;

void setup() {
  size(1000, 600);
}
void draw() {
  background(20, 25, 90);
  // Draw 2 birds
  drawBird(bird1X, bird1Y);
  drawBird(bird2X, bird2Y);
  
  // Move bird 2
  bird1X = changeStuff(bird1X, changeX1);
  bird1Y = changeStuff(bird1Y, changeY1);
  
  println(bird1Y);
  // Move bird2
  bird2X = changeStuff(bird2X, changeX2);
  bird2Y = changeStuff(bird2Y, changeY2);
//  
  // Bounce bird 1
  changeX1 = bounceStuff(bird1X, 70, width-100, changeX1);
  changeY1 = bounceStuff(bird1Y, 120, 330, changeY1);
  
  // Bounce bird 2
  changeX2 = bounceStuff(bird2X, -120, width, changeX2);
  changeY2 = bounceStuff(bird2Y, -50, height+100, changeY2);
}

void drawBird(float a, float b) {
  stroke(80);
  strokeWeight(10);
  fill(100);
  ellipse(a, b + 50, 50, 50);
  ellipse(a + 70, b + 50, 50, 50);
  strokeWeight(25);
  noFill();
  bezier(a - 70, b + 235, a - 90, b - 110, a + 160, b - 110, a + 140, b + 235);
  strokeWeight(10);
  line(a + 15, b + 70, a + 30, b + 95);
  line(a + 55, b + 70, a + 30, b + 95);
  fill(255);
  ellipse(a, b + 50, 10, 10);
  ellipse(a + 80, b + 50, 10, 10);
  strokeWeight(25);
  line(a - 65, b + 235, a + 140, b + 235);
  strokeWeight(10);
  line(a - 13, b + 235, a - 23, b + 265);
  line(a - 8, b + 235, a - 8, b + 265);
  line(a - 3, b + 235, a + 7, b + 265);
  line(a + 77, b + 235, a + 67, b + 265);
  line(a + 82, b + 235, a + 82, b + 265);
  line(a + 87, b + 235, a + 97, b + 265);
}

float changeStuff(float stuff, float change) {
  stuff = stuff+change;
  return stuff;
}

// Bouncing the bird
float bounceStuff(float currentNum, float lowerBound, float upperBound, float speed) {
  if (currentNum > upperBound || currentNum < lowerBound) {
    // Turn around
    speed = speed*-1;
  }
  //println(speed);
  return speed;
}


