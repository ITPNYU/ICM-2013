

Bubble[] bubbles;

void setup() {
  size(640, 360);
  bubbles = new Bubble[1000];
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(random(8,18));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].ascend();
    bubbles[i].display();
  }
}

void mousePressed() {
  //b.pop();
}


