class Path {

  ArrayList<PVector> history;

  Path() {
    history = new ArrayList<PVector>();
  }

  void addPoint(float x, float y) {
    history.add(new PVector(x, y));
  }

  void display() {
    stroke(0);
    noFill();
    beginShape();
    for (PVector v : history) {
      vertex(v.x, v.y);
    }
    endShape();
  }
  
  // Can you make all the points jiggle?
  void jiggle() {
    
  }
}

