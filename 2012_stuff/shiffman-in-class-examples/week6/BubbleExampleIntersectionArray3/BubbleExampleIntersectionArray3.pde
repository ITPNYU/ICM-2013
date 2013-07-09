Bubble[] bubbles = new Bubble[3];
int currentTotal = 0;
void setup() {
  size(900, 450);
    s = loadShape("isf_satellite.svg");
  
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(random(width), height, random(20,36));
  }
}

void draw() {
  background(0);
  for (int i = 0; i < currentTotal; i++) {
    bubbles[i].ascend();
    bubbles[i].display();
  }
  
  if (random(1) < 0.01) {
    currentTotal++; 
  }
}

void mousePressed() {
}


