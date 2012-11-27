

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  
  PVector velocity = new PVector(mouseX - pmouseX,mouseY - pmouseY);
  float speed = velocity.mag();
  
  fill(255);
  ellipse(width/2,height/2,speed*4,speed*4);


  fill(255);
  text("speed of mouse: " + int(speed), 10, 30);
}

