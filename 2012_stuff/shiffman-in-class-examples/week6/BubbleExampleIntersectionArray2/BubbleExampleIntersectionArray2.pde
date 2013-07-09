Bubble[] bubbles = new Bubble[200];

void setup() {
  size(640, 360);

  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble(random(width), height, random(4,16));
  }
}


void draw() {
  background(255);
  
    bubbles[0].ascend();
    bubbles[0].display(255);
  
  for (int i = 1; i < bubbles.length; i++) {
    
    bubbles[i].ascend();
    bubbles[i].display(0); 
   
  }
}


