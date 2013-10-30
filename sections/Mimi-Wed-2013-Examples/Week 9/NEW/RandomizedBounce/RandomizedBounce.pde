PVector loc = new PVector(0,200);
PVector speed = new PVector(2,3);
PVector gravity = new PVector(0,0.2);
float max = 10;

void setup() {
  size(400,400);  
}

void draw() {
  background(255);
  if(loc.x > width || loc.x < 0) {
    speed.x*=random(-1,-max); 
  }
  if(loc.y > height || loc.y < 0) {
   speed.y*=random(-1, -max); 
  }
  loc.add(speed);
  speed.add(gravity);
  ellipse(loc.x, loc.y, 10, 10);
}
