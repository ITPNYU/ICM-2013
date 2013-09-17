

//Bubble b;
float x,y;

void setup() {
  size(600, 600);
  //b = new Bubble();
  x = 300;
  y = 600;
}

void draw() {
  background(255);
  
  //b.ascend();
  y--;
  //b.display();
  ellipse(x,y,100,100);
}

