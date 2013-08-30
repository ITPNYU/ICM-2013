// ICM 2012
// Daniel Shiffman
// Example about arcs

// An angle of 0
float a = 0;

void setup() {
  size(640,360);
  smooth();
}

void draw() { 
  background(0);
 
  // Show the first circles
  stroke(75);
  strokeWeight(1);
  noFill();
  ellipse(100,180,180,180);
  ellipse(320,180,180,180);
  ellipse(540,180,180,180);

  // Arc one way
  stroke(255);
  strokeWeight(2);
  fill(127);
  // x,y,width,height,start angle, end angle
  arc(100,180, 180,180,0, HALF_PI);
  
  // Arc another
  noFill();
  arc(320,180, 180,180,-HALF_PI, 0);
  
  // Animating arc
  arc(540,180, 180,180,0, a);
  
  a += 0.01;  
  if (a > TWO_PI) {
    a = 0;
  }
}

