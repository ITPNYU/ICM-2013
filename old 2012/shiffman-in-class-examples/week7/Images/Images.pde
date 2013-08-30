
PImage img;

void setup() {
  size(600,600);
  img = loadImage("mandrill.gif");  
}

void draw() {
  background(0);
  
  //tint(mouseX,mouseY,255);
  image(img,0,0);
   
}
