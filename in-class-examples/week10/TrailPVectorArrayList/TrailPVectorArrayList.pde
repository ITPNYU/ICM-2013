ArrayList<PVector> history;


void setup() {
  size(400, 400);
  history = new ArrayList<PVector>();
}

void draw() {
  background(0);

  if (mousePressed) {
    history.add(new PVector(mouseX, mouseY));
  }
  
  stroke(255);
  noFill();
  beginShape();
  for (PVector v : history) {
    vertex(v.x,v.y);
     v.x += random(-1,1);
     v.y += random(-1,1);
  } 
  endShape();
  
  if (history.size() > 100) {
     history.remove(0);
  } 
  
  fill(255);
  text(history.size(),10,30);
}

