// Two Switchs
Switch b1;
Switch b2;

void setup() {
  size(600, 200);
  // A loop to evenly space out the Switchs along the window
  b1 = new Switch(100, height/2-25, 50, 50); 
  b2 = new Switch(300, height/2-25, 50, 50);
}

void draw() {
  background(255);
  // If both Switchs are on, background is red!
  if (b1.on && b2.on) {
    background(255,0,0);
  // Left Switch green
  } else if (b1.on) {
    background(0,255,0); 
  // Right Switch blue
  } else if (b2.on) {
    background(0,0,255); 
  }

  b1.rollover(mouseX,mouseY);
  b2.rollover(mouseX,mouseY);

  b1.display();
  b2.display();
  
  
}


void mousePressed() {
  b1.click(mouseX,mouseY);
  b2.click(mouseX,mouseY);
}

