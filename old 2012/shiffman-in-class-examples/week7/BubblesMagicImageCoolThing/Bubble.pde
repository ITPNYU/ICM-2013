class Bubble {
  float x;
  float y;
  float yspeed;
  float diameter;
  
  // The Constructor!
  // The Bubble's "setup"
  Bubble(float tempDiam) {
    x = random(width);
    y = random(height);
    yspeed = random(0,2);
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
    color c = loris.get(int(x),int(y));
    float r = red(c);
    float g = green(c);
    float b = blue(c);    
    fill(r,g,b,50);
    noStroke();
    //stroke(255);
    ellipse(x,y,diameter,diameter); 
  }
  
}
