

// How would you have multiple paths?
// So that you can a new one each time you click?

Path p;

void setup() {  
  size(640, 360);
  p = new Path();
}

void draw() { 
  background(255);
  
  if (mousePressed) {
    p.addPoint(mouseX,mouseY); 
  }
  
  p.display();
  
}

