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
