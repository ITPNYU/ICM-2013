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
 
 // From: http://www.rmx.cz/monsters/

Monster ms;
Hair h;

void setup() {
  size(500, 500);
  background(255);
  smooth();
  noCursor();
  h = new Hair();
  ms = new Monster(width/2, height/2, false);
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
  
  
  h.grow();
  ms.display();
  h.display(ms.x, ms.y-92);
}


class Monster {
  float x, y;  // X-coordinate, y-coordinate
  boolean pressed;  // mousePressed state

  // Constructor
  Monster(float xpos, float ypos, boolean state) {
    x = xpos;
    y = ypos;
    pressed = state;
  }

  void display() {
    // Body
    fill(0);
    noStroke();
    beginShape();
    vertex(x-10, y+80);  // V1
    bezierVertex(x-210, y-150, x+210, y-150, x+10, y+80);  // C1, C2, V2
    vertex(x+20, y+50);  // V3
    vertex(x-20, y+50);  // V4
    vertex(x-10, y+80);
    endShape();

    // Left hand
    beginShape();
    vertex(x-54, y+14);
    vertex(x-70, y+28);
    vertex(x-49, y+25);
    endShape();

    // Right hand
    beginShape();
    vertex(x+54, y+14);
    vertex(x+70, y+28);
    vertex(x+49, y+25);
    endShape();

    // Eyes
    fill(255);
    ellipse(x-30, y-35, 20, 20);  // White bases
    ellipse(x+30, y-37, 20, 20);

    if (pressed) {
      noFill();
      stroke(0);
      line(x-50, y-55, x-10, y-15);  // Crossed pupils
      line(x-10, y-55, x-50, y-15);
      line(x+10, y-57, x+50, y-17);
      line(x+50, y-57, x+10, y-17);
    } 
    else {
      fill(0);
      ellipse(x-30, y-35, 8, 8);  // Normal pupils
      ellipse(x+30, y-37, 8, 8);
    }

    // Mouth
    stroke(255);
    line(x-60, y, x+59, y+3);
    int[] stichX = { 
      -57, -55, -45, -39, -29, -35, -24, -17, -9, -10, 8, 5, 21, 15, 30, 26, 40, 39, 56, 50
    };
    for (int i = 0; i < stichX.length; i+=2) {
      line(x+stichX[i], y-4, x+stichX[i+1], y+6);
    }
  }
}

class Hair {
  float x, y;
  float dx, dy;
  float dx2, dy2;
  float lx, ly;
  float damping = 0.8;
  float power = 15;
  float[] xArray = {
  }
  , yArray = {
  };
  int cnt;

  // Constructor
  Hair() {
    x = 0;
    y = 0;
    dx = random(-30, 30);
    dy = random(-30, 0);
    dx2 = 0;
    dy2 = 0;
    lx = -1;
    ly = -1;
    xArray = new float[0];
    yArray = new float[0];
    xArray = append(xArray, x);
    yArray = append(yArray, y);
    cnt = 0;  // Counter

    while (x != lx && y != ly) {
      dx2 = (x - 0)/power;
      dy2 = (y - -75)/power;
      dx -= dx2;
      dy -= dy2;
      dx *=damping;
      dy *=damping;
      lx = x;
      ly = y;
      x += dx;
      y += dy;
      xArray = append(xArray, x);
      yArray = append(yArray, y);
    }
  }

  void grow() {
    if (cnt < xArray.length) cnt++;
  }

  void shrink() {
    if (cnt < 0) {
      cnt = 0;
      h = new Hair();
    } 
    else {
      cnt--;
    }
  }

  void display(float xpos, float ypos) {
    float[] cxArray = new float[xArray.length];
    float[] cyArray = new float[yArray.length];

    for (int i = 0; i < xArray.length; i++) {
      cxArray[i] = xArray[i] + xpos;
      cyArray[i] = yArray[i] + ypos;
    }

    stroke(0);
    if (cnt > cxArray.length) {
      cnt = cxArray.length;
    }
    for (int i = 0; i < cnt-1; i++) {
      line(cxArray[i], cyArray[i], cxArray[i+1], cyArray[i+1]);
    }
  }
}

void mousePressed() {
  saveFrame("monster1.png"); 
}
