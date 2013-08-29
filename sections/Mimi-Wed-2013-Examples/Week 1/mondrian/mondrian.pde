
Line [] lines = new Line [10];

void setup() {
  size(800, 800);
  background(255); 
  
  for (int i = 0; i < lines.length; i++) {
    float randomDir = random(-1, 1)*2;
    if(random(1) > random(1)) {
      float randomY = random(height);
      lines[i] = new Line(0, randomY, width, randomY, 0, randomDir);
    }
    else {
      float randomX = random(width);
      lines[i] = new Line(randomX, 0, randomX, height, randomDir, 0);
    }
  }
}


void draw() {
  background(255);
  
  for(Line line : lines) {
   line.run(); 
  }
  
}

