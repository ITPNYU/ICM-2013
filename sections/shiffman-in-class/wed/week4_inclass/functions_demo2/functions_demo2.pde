boolean button = false;

float y = 0;

void setup() {
  size(400, 400);
}

void draw() {
  
  background (0);
  drawButton();
  if (button) {
    moveBall();
    drawBall();
  }
}

void drawButton() {
  rectMode(CENTER);
  fill(0, 0, 255);
  rect(width/2, height/2, 100, 100);
}

void drawBall() {
  ellipse(200, y, 10, 10);
}

void moveBall() {
  y = y + 1;
}


void mousePressed() {

  if ((mouseX>150 && mouseX<250) && (mouseY>150 && mouseY< 250)) {
    button = true;
    y = 0;
  }
}

