Bubble b1;

void setup() {
  size(400, 400);
  b1 = new Bubble();
}

void draw() {
  background (255);

  b1.display();
  b1.move();
}


