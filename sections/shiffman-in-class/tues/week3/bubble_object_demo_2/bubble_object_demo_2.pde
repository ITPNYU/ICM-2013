

Bubble b1;
Bubble b2;

void setup() {
  size(600, 600);
  b1 = new Bubble(100,600);
  b2 = new Bubble(400,500);
}

void draw() {
  background(255);
  
  b1.ascend();
  b1.display();
  b2.ascend();
  b2.display();
}

