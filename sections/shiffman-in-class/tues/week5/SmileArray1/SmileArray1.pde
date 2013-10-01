


//face objects
SmileyFace[] faces = new SmileyFace[100];

void setup() {  
  size(800, 800); 
  for (int i = 0; i < faces.length; i++) {
    faces[i] = new SmileyFace(new PVector(random(width),random(height)));
  }
}

void draw() { 
  background(255); 
  //for (int i = 0; i < faces.length; i++) {
    //faces[i].display();
  //}
  
  for (SmileyFace f : faces) {
    f.display(); 
    f.jiggle();
  }
  
  
}

