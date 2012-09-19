int circleX=150;
int circleY=100;

int circleA=500;
int circleB=100;

void setup() {
  size(600, 400);
  background(204, 205, 227);
  fill(247, 228, 165);
  stroke(247, 228, 165);
  rect(179, 290, 360, 450);
  fill(95, 39, 11);
  stroke(95, 39, 11);
  triangle(178, 289, 444, 194, 539, 289);
  rect(529, 289, 11, 129);
  stroke(189, 33, 3);
  fill(189, 33, 3);
  rect(178, 357, 350, 25);

  //cherry baubles
  fill(243, 245, 201);
  stroke(243, 245, 201);
  ellipse(452, 198, 33, 33);
  fill(189, 33, 33);
  stroke(189, 33, 33);
  ellipse(460, 227, 41, 41);
  fill(243, 245, 201);
  stroke(243, 245, 201);
  ellipse(452, 243, 36, 36);
  ellipse(504, 250, 67, 67);

  //existing sprinkles
  strokeWeight(4);
  stroke(235, 201, 245);
  line(300, 269, 309, 258);
  line(382, 252, 392, 242);
  line(452, 282, 465, 282);
  line(377, 270, 372, 282);
}

void draw() {
  //add sprinkles
  strokeWeight(4);
  stroke(241, 45, 165);
  line(mouseX, mouseY, mouseX-9, mouseY-11);

  //X out cake
  stroke(0, 0, 0, 155);
  fill(66, 183, 252, 100);
  ellipse(circleX, circleY, 50, 50);
  circleY=circleY+40;
  circleX=circleX+40;

  ellipse(circleA, circleB, 50, 50);
  circleA=circleA-40;
  circleB=circleB+40;
  
  
}

void keyPressed() {
  fill(0);
  textSize(48);
  text("You can't have it",50,60);
}

void mousePressed() {
  
}

