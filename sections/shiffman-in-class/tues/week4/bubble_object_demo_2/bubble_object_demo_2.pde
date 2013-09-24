

Bubble b1;
Bubble b2;

void setup() {
  size(600, 600);
  b1 = new Bubble(200,600);
  b2 = new Bubble(400,500);
}

void draw() {
  background(255);
  b1.ascend();
  b1.display();
  b2.ascend();
  b2.display();
  
  float d = dist(b1.x,b1.y,b2.x,b2.y);
  if (d < b1.r + b2.r) {
    println("OVERLAPPING");
  }
  
}

