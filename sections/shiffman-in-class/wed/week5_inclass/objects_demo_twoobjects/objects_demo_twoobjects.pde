Bubble b1;
Bubble b2;

void setup() {
  size(400, 400);
  b1 = new Bubble(100);
  b2 = new Bubble(300);
}

void draw() {
  background (255);

  b1.display();
  b1.move();
  
  
  b2.display();
  b2.move();
}

