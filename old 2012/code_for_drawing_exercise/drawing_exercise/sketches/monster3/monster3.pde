// David's monster
// By David Bollinger
// http://www.rmx.cz/monsters/

float mX, mY, mW,j;
int count = 30;
float mJ = 100;// max Jump
float[] jA = new float[count]; // sinus angle
float[] aR = new float[count]; // sinus angle rotation
float[] dH = new float[count]; // default height

float[] eJ = new float[3];


void setup(){
  size(500,500);
  mX = width/2;
  mY = height/2;
  mW = mX;
  
  for(int i=0;i<count;i++){
    jA[i] = random(0,360);
    aR[i] = random(0,5);
    dH[i] = random(0,20);
  }
  
}

void draw(){
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
  //draw the main body
  noStroke();
  fill(0);
  float t1x = mX-mW/2;
  float t1y = mY+30;
  float t2x = mX+mW/2;
  float t3y = mY-160;
  //triangle(t1x,t1y,t2x,t1y,mX,t3y);

  // bottom bolts
  
  float sW = mW/count;
  for(int i=0;i<count;i++){
    float temp = sin(radians(jA[i])); // sin drives the bolt up&down animation
    float mapped = map(temp,-1,1,0,1); // this maps the sin to positive values
    float mJc = mJ * ( dist(t1x+(i*sW),t1y,mouseX,mouseY)/mW ); // this set the maximuj jump acc to distance between bolt and mouse
    j = t1y + mapped * mJc + dH[i];  // this sums it all up 
    triangle(t1x+(i*sW),t1y,t1x+((i+1)*sW),t1y, (t1x+i*sW)+sW/2 + random(-2,2), j); // this draws a triangles
    jA[i]+=aR[i]; // this increases angle for sin 
  }
  
  int countT= 3;
  sW = mW/countT;
  t1y-=30;
   
  for(int i=0;i<countT;i++){
    float temp = sin(radians(jA[i])); // sin drives the bolt up&down animation
    float mapped = map(temp,-1,1,0,1); // this maps the sin to positive values
    float mJc = mJ * ( dist(t1x+(i*sW),t1y,mouseX,mouseY)/mW ); // this set the maximuj jump acc to distance between bolt and mouse
    j = t1y - mapped * mJc - dH[i] - 20;  // this sums it all up 
    eJ[i]=j-t1y;
    triangle(t1x+(i*sW),t1y,t1x+((i+1)*sW),t1y, (t1x+i*sW)+sW/2 + random(-2,2), j); // this draws a triangles
    jA[i]+=aR[i]; // this increases angle for sin 
  }
  
  rectMode(CORNERS);
  rect(t1x,t1y,t1x+mW,t1y+30);
  
  rectMode(CENTER);
  fill(255);
  rect((t1x+0*sW)+sW/2,t1y + (eJ[0])/4,10,15);
  rect((t1x+2*sW)+sW/2,t1y + (eJ[2])/4,10,15);
  rect(mX,mY+10,15,7);
  
  fill(0);
  rect((t1x+0*sW)+sW/2,t1y + (eJ[0])/4,5,5);
  rect((t1x+2*sW)+sW/2,t1y + (eJ[2])/4,5,5);
  
   
}

void mousePressed() {
  saveFrame("monster3.png"); 
}
