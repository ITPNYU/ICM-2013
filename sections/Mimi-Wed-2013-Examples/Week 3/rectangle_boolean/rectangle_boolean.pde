boolean isChecked = false;
float side = 100;

boolean isOnRightSideOfScreen = side > 50;

void setup() {
  size(400, 400);
  rectMode(CENTER);
}
void draw() {
  rect(width/2, height/2, side, side);
  println(isChecked);
}

void mousePressed() {
  if (mouseX > (width/2-side/2) && mouseX < (width/2+side/2) && mouseY > (height/2-side/2) && mouseY < (height/2+side/2)) {
    isChecked = !isChecked;
    println(isChecked);
  }
}

