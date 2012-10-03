

Bubble b1;
Bubble b2;

void setup() {
  size(640,360);
  b1 = new Bubble(128);
  b2 = new Bubble(4);
}

void draw() {
  background(0);
  b1.ascend();
  b2.ascend();
  b1.display();
  b2.display();
}

void mousePressed() {
  //b.pop(); 
}



class Bubble {
  float x;
  float y;
  float diameter;
  
  // The Constructor!
  // The Bubble's "setup"
  Bubble(float tempDiam) {
    x = width/2;
    y = height;
    diameter = tempDiam;
  }
  
  void ascend() {
    x = x + random(-1,1);
    y = y - 1; 
    
    if (y < 0) {
      y = height; 
    }
  }

  void display() {
    fill(255,100);
    stroke(255);
    ellipse(x,y,diameter,diameter); 
  }
  
}

