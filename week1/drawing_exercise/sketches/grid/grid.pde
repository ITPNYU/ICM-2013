/*
 * File: SingleHairMonster.pde
 * ---------------------------
 * This program will generate a monster with a single
 * curly hair. Left click to grow the hair. Right click
 * to shrink the hair.
 *
 * Author: Akinori Kinoshita
 * E-mail: art.akinoshi -at- gmail.com
 * Date: Mon Jul 20 23:02:08 CST 2009
 */


void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  
  float w = width/25;
  
  stroke(127);
  int counter = 0;
  for (int x = 0; x < width+w; x+= w) {
   line(x,0,x,height);
   textAlign(CENTER);
   text(counter,x+w/2,3*w/4);
   counter++;
  }
  counter = 0;
  for (int y = 0; y < height+w; y+= w) {
   line(0,y,width,y);
   if (y > 0) text(counter,w/2,y+3*w/4);
   counter++;

  }
  
  
}


void mousePressed() {
  saveFrame("grid.png"); 
}
