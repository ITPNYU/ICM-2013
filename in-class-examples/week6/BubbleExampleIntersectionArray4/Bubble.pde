class Bubble {
  float x;
  float y;
  float yspeed;
  float diameter;
  
  // The Constructor!
  // The Bubble's "setup"
  Bubble(float tempDiam) {
    x = random(width);
    y = height;
    yspeed = random(1,3);
    diameter = tempDiam;
  }
  
  void ascend() {
    x = x + random(-1,1);
    y = y - yspeed; 
    
    if (y < 0) {
      y = height; 
    }
  }

  void display() {
    noFill();
    stroke(255);
    ellipse(x,y,diameter,diameter); 
  }
  
}
