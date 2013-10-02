Bubble bubble1;

void setup() {
  size(400, 400);
  bubble1 = new Bubble();
}

void draw() {
  background (255);

  bubble1.display();
  bubble1.move();
}

void mousePressed() {
  
  bubble1.changeColor(); 
}


