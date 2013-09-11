void setup() {
  size(400, 300);
  background(255);
}

void draw() {
  // background(255);
  
  fill(0);
  //ellipse(mouseX, mouseY, 50, 50);

  stroke(0);
  line(mouseX, mouseY, pmouseX, pmouseY);
}

void mousePressed() {
  background(255);
  
}

