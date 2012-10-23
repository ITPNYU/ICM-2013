Bubble[] bubbles = new Bubble[2];

void setup() {
  size(640,360);
  bubbles[0] = new Bubble(300,height,20);
  bubbles[1] = new Bubble(320,height,24);
}

void draw() {
  background(0);
  bubbles[0].ascend();
  bubbles[1].ascend();
  bubbles[0].display();
  bubbles[1].display();
}




