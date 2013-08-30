

Bubble[] bubbles;
PImage loris;

void setup() {
  size(460, 276);
  bubbles = new Bubble[750];
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(random(8,16));
  }
  loris = loadImage("loris.jpg");
  background(0);

}

void draw() {
  //image(loris,0,0);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].ascend();
    bubbles[i].display();
  }
}

void mousePressed() {
  //b.pop();
}


