
void setup() {
  size(640, 360);
}

void draw() {

  float x = 10;
  if (mouseX > 100 && mouseY > 100) {
    background(255, 0, 0);
  } 
  else {
    background(0, 255, 0);
  }

  println(x);
}

