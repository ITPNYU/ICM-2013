class Button {

  float x, y, w, h;
  String label;
  color c;
  
  boolean isOn;


  Button(float _x, float _y, float _w, float _h, String _label, color _c) {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    label = _label;
    c = _c;
  }


  void display() {
    fill(c); 
    noStroke();
    rectMode(CENTER);
    rect(x, y, w, h);
    textAlign(CENTER, CENTER);
    fill(255);
    text(label, x, y, w-10, h);
  }

  boolean isPressed() {
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      return true;
    } 
    else {
      return false;
    }
  }
  
  void toggle() {
   isOn = !isOn;     
  }
}

