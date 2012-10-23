

Bubble b1;
Bubble b2;

void setup() {
  size(640,360);
  b1 = new Bubble(300,height,20);
  b2 = new Bubble(320,height,24);
}

void draw() {
  background(0);

  /*float d = dist(b1.x,b1.y,b2.x,b2.y);
  if (d < b1.diameter/2 + b2.diameter/2) {
    background(255,0,0); 
  }*/

  if (b1.intersects(b2)) {
    background(255,0,0);     
  }
  

  b1.ascend();
  b2.ascend();
  b1.display();
  b2.display();
  
  
  
  
  
  
}

void mousePressed() {
  //b.pop(); 
}



