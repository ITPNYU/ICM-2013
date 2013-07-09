void setup() {
  size(600, 300);
}

void draw() {
 background(0);
 
  if (mouseX > 200 && mouseX < 300) {
     background(255,0,0);
  } 

  fill(255);
  textSize(36);
  text(mouseX, 50, 50);
}

