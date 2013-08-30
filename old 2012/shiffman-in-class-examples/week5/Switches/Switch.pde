// Switch class

class Switch {    

  // Switch location and size
  float x;   
  float y;   
  float w;   
  float h;   
  // Is the Switch on or off?
  boolean on;  
  // Are we rolling over the Switch?
  boolean rolling;

  // Constructor initializes all variables
  Switch(float tempX, float tempY, float tempW, float tempH) {    
    x  = tempX;   
    y  = tempY;   
    w  = tempW;   
    h  = tempH;   
    on = false;  // Switch always starts as off
  }    

  boolean over(int mx, int my) { 
    if (mx > x && mx < x + w && my > y && my < y + h) {
      return true;
    } 
    else {
      return false;
    }
  }

  void rollover(int mx, int my) {
    rolling = over(mx, my);
  }

  void click(int mx, int my) {
    if (over(mx, my)) {
      on = !on;
    }
  }

  void display() {
    rectMode(CORNER);
    stroke(0);
    // The color changes based on the state of the Switch
    if (on) {
      fill(255);
    } 
    else {
      fill(127);
    }
    // The stroke changes based on rollover state
    if (rolling) {
      strokeWeight(4);
    } 
    else {
      strokeWeight(1);
    }
    rect(x, y, w, h);

    fill(0);
    strokeWeight(4);
    textAlign(CENTER);
    if (on) {
      line(x+w/2, y, x+w, y-h);
      text("ON",x+w/2,y+h/2);
    } 
    else {
      line(x+w/2, y, x, y-h);
      text("OFF",x+w/2,y+h/2);
    }
  }
} 

