/**
<pre>
DBMonster.pde (as of Processing 0156 Beta)
2008-11-13 Dave Bollinger
{davebollinger{(-at-){gmail}[-dot-]}com}

mouse x controls amount of rotational force applied
(move left-right to cause spin)
mouse y controls decay of rotational force to child limbs
(move down to do more violent spins, move up for gentler spins)

hold mouse at roughly top center to return to default position
</pre>
*/

// From: http://www.rmx.cz/monsters/

FKBox monster;

void setup() {
  size(400,400,JAVA2D);
  smooth();
  rectMode(CORNERS);
  stroke(128);
  color B = color(0);
  color W = color(255);
  // build torso
  FKBox waist = new FKBox(-20f, -10f, 20f, 10f, 0f, B);
  monster = waist; // waist is the root of the monster graph
  FKBox hips = new FKBox(-25f, 0f, 25f, 30f, 0f, B);
  waist.attach(hips, 0, waist.h/2f);
  FKBox chest = new FKBox(-40f, 0f, 40f, -80f, 0f, B);
  waist.attach(chest, 0, -waist.h/2f);
  // build head
  FKBox neck = new FKBox(-8, 0f, 8, -20, 0f, B);
  chest.attach(neck, 0, chest.y2);
  FKBox head = new FKBox(-20, 0, 20, -50, 0f, B);
  neck.attach(head, 0, neck.y2);
  FKBox reye = new FKBox(-4, -4, 4, 4, 0f, W);
  head.attach(reye, -10, -30);
  FKBox leye = new FKBox(-4, -4, 4, 4, 0f, W);
  head.attach(leye, 10, -30);
  // build right arm (screen left)
  FKBox ruarm = new FKBox(-6, 0, 6, 70, PI/4f, B);
  chest.attach(ruarm, chest.x1, chest.y2+10f);
  FKBox rlarm = new FKBox(-5, 0, 5, 50, -PI/4f, B);
  ruarm.attach(rlarm, 0, ruarm.h);
  FKBox rhand = new FKBox(-8, 0, 8, 20, 0f, B);
  rlarm.attach(rhand, 0, rlarm.h);
  // build left arm (screen right)
  FKBox luarm = new FKBox(-6, 0, 6, 70, -PI/4f, B);
  chest.attach(luarm, chest.x2, chest.y2+10f);
  FKBox llarm = new FKBox(-5, 0, 5, 50, PI/4f, B);
  luarm.attach(llarm, 0, luarm.h);
  FKBox lhand = new FKBox(-8, 0, 8, 20, 0f, B);
  llarm.attach(lhand, 0, llarm.h);
  // build right leg (screen left)
  FKBox ruleg = new FKBox(-10, 0, 10, 100, PI/4f, B);
  hips.attach(ruleg, hips.x1+15, hips.y2);
  FKBox rlleg = new FKBox(-8, 0, 8, 80, -PI/4f, B);
  ruleg.attach(rlleg, 0, ruleg.h);
  FKBox rfoot = new FKBox(-10, 0, 0, 20, PI/2f, B);
  rlleg.attach(rfoot, rlleg.x1, rlleg.h);
  // build left leg (screen right)
  FKBox luleg = new FKBox(-10, 0, 10, 100, -PI/4f, B);
  hips.attach(luleg, hips.x2-15, hips.y2);
  FKBox llleg = new FKBox(-8, 0, 8, 80, PI/4f, B);
  luleg.attach(llleg, 0, luleg.h);
  FKBox lfoot = new FKBox(10, 0, 0, 20, -PI/2f, B);
  llleg.attach(lfoot, llleg.x2, llleg.h);
}

void draw() {
  background(255);
  translate(width/2,height/2-20);
  float force = (float)(mouseX) / (float)(width) * 0.4f - 0.2f;
  float decay = (float)(mouseY) / (float)(height) * 0.02f + 0.01f;
  monster.impulse(force, decay);
  // dang, out of mouse axes to control friction
  // try ~0.8 for stiffer movement, or ~0.99 for mega chaos
  float friction = 0.9f;
  monster.move(friction);
  monster.draw();
}

// rough kinda springy forward kinematics thingy
// not intended to be of wide/general applicability
class FKBox {
  float pivotx, pivoty;
  float x1, y1, x2, y2, w, h;
  float rot, drot, moment;
  color c;
  FKBox parent;
  ArrayList children;
  int nchildren;
  FKBox(float x1, float y1, float x2, float y2, float rot, color c) {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
    this.w = abs(x2-x1);
    this.h = abs(y2-y1);
    this.rot = rot;
    this.drot = 0f;
    this.c = c;
    this.parent = null;
    this.children = new ArrayList();
    this.nchildren = 0;
  }
  void attach(FKBox child, float x, float y) {
    child.parent = this;
    child.pivotx = x;
    child.pivoty = y;
    child.calc();
    children.add(child);
    nchildren++;
  }
  void calc() {
    float dx1 = x1 - pivotx; 
    float dx2 = x2 - pivotx; 
    float dx = max(dx1,dx2);
    float dy1 = y1 - pivoty; 
    float dy2 = y2 - pivoty; 
    float dy = max(dy1,dy2);
    moment = sqrt(max(dx,dy));
  }
  void impulse(float force, float decay) {
    drot += force;
    for (int i=0; i<nchildren; i++) {
      FKBox child = (FKBox)children.get(i);
      child.impulse(-drot*decay*child.moment, decay);
    }
  }
  void move(float friction) {
    drot *= friction;
    for (int i=0; i<nchildren; i++) {
      FKBox child = (FKBox)children.get(i);
      child.move(friction);
    }
  }
  void draw() {
    pushMatrix();
    translate(pivotx,pivoty);
    rotate(rot+drot);
    fill(c);
    rect(x1,y1,x2,y2);
    for (int i=0; i<nchildren; i++) {
      FKBox child = (FKBox)children.get(i);
      child.draw();
    }
    popMatrix();
  }
}

void mousePressed() {
  saveFrame("monster2.png"); 
}

