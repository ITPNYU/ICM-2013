Bubble[] bubbles = new Bubble[100];

void setup() {
  size(400, 400);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(); 
  }
}

void draw() {
  background (255);
  /*
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].display();
    bubbles[i].move(); 
  }
  */
  
  for (Bubble b: bubbles) {
    b.display();
    b.move();
  }
}


