


//face objects
SmileyFace[] faces = new SmileyFace[10000];
int total = 0;
void setup() {  
  size(800, 800); 
  for (int i = 0; i < faces.length; i++) {
    faces[i] = new SmileyFace(new PVector(random(width), random(height)));
  }
}

void mousePressed() {
   total++;
} 

void draw() { 
  background(255); 
  for (int i = 0; i < total; i++) {
    faces[i].display();
    faces[i].jiggle();
  }

  /*for (SmileyFace f : faces) {
   f.display(); 
   f.jiggle();
   }*/
}

