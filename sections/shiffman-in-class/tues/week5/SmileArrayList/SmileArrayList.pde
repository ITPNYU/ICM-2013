


//face objects
// SmileyFace[] faces = new SmileyFace[10000];
ArrayList<SmileyFace> faces = new ArrayList<SmileyFace>();

int total = 0;
void setup() {  
  size(800, 800);
}

void mousePressed() {
  faces.add(new SmileyFace(new PVector(mouseX,mouseY)));
  
  if (faces.size() > 5) {
    faces.remove(0); 
  }
  
} 

void draw() { 
  background(255); 

  for (SmileyFace f : faces) {
    f.display(); 
    f.jiggle();
  }
}

