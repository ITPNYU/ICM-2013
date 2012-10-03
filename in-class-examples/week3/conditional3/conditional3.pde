void setup() {
  size(600, 300);
}

void draw() {
  if (mouseX > 400) {
    background(0, 255, 0);
  } else if (mouseX > 300) {
    // there are fifty lines of code i've written
    // that make it rain on screen
    // that code goes here
    // all of it
    
    //
    
    //
    
    
    
  } else if (mouseX > 200) {
    background(0, 255, 255);
  } else if (mouseX > 100) {
    background(255, 120, 50);
  } else {
    background(0); 
  }


  fill(255);
  textSize(36);
  text(mouseX, 50, 50);
}

