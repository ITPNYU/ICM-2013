// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-3: Creating objects from a text file

// A Class to describe a "Bubble"

class Bubble {
  float x,y;
  float diameter;
  String name;
  
  boolean over = false;
  
  // The constructor initializes color and size
  // Location is filled randomly
  Bubble(float x_, float y_, float diameter_, String s) {
    x = x_;
    y = y_;
    diameter = diameter_;
    name = s;
  }
  
  void rollover(float px, float py) {
    float d = dist(px,py,x,y);
    if (d < diameter/2) {
      over = true; 
    } else {
      over = false;
    }
  }
  
  // Display the Bubble
  void display() {
    stroke(0);
    strokeWeight(2);
    noFill();
    ellipse(x,y,diameter,diameter);
    if (over) {
      fill(0);
      textAlign(CENTER);
      text(name,x,y+diameter/2+20);
    }
  }
}
