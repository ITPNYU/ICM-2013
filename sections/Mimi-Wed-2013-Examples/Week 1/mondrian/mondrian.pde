// Create an array of 10 Line objects
Line [] lines = new Line [10];

void setup() {
  // Create a window, 800 pixels wide by 800 pixels tall
  size(800, 800);
  
  // Create 10 line objects,   
  for (int i = 0; i < lines.length; i++) {
    // Define a random speed between -2 and 2;
    float randomSpeed = random(-1, 1)*2;
    // 50% of the time, make it a horizontal line
    if(random(1) > .5) {
      float randomY = random(height);
      lines[i] = new Line(0, randomY, width, randomY, 0, randomSpeed);
    }
    // 50% of the time make it a vertical line
    else {
      float randomX = random(width);
      lines[i] = new Line(randomX, 0, randomX, height, randomSpeed, 0);
    }
  }
}


void draw() {
  // Make the background white
  background(255);
  
  // Run each line object
  for(Line line : lines) {
   line.run(); 
  }
  
}

