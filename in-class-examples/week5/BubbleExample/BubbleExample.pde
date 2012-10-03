

Bubble b1;
Bubble b2;

void setup() {
  size(640,360);
  b1 = new Bubble(128);
  b2 = new Bubble(4);
}

void draw() {
  background(0);
  b1.ascend();
  b2.ascend();
  b1.display();
  b2.display();
}

void mousePressed() {
  //b.pop(); 
}



