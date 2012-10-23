import processing.video.*;

Bubble[] bubbles;
//PImage loris;
Capture cam;

void setup() {
  size(640, 480);
  bubbles = new Bubble[750];
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(random(8,16));
  }
  
  //loris = loadImage("loris.jpg");
  cam = new Capture(this,width,height,30);
  cam.start();
  background(0);

}

void draw() {
  cam.read();
  
  //image(loris,0,0);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].ascend();
    bubbles[i].display();
  }
}

void mousePressed() {
  //b.pop();
}


