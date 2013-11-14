/**
A Button class that can support
2 Types of Buttons
One where you click to make the circle bigger
The other you toggle to let the circle get bigger by itself
**/

Button clickButton;
Button toggleButton;
float circleW = 10;
float circleH = 10;

void setup() {
  size(400, 400); 
  smooth();
  clickButton = new Button(width/2, height/4, 120, 100, "Click To Grow Circle", color(50, 200, 50)); 
  toggleButton = new Button(width/2, 3*height/4, 120, 100, "Click To Make Circle Get Bigger By Itself", color(255, 67, 67));
}


void draw() {
  background(255);
  fill(255, 0, 0);
  noStroke();
  ellipse(width/2, height/2, circleW, circleH);
  println(toggleButton.isOn);
  if (toggleButton.isOn) {
    circleW+=1;
    circleH+=1;
  }


  clickButton.display();
  toggleButton.display();
}

void mousePressed() {
  if (clickButton.isPressed()) {
    circleW+=1;
    circleH+=1;
  } 
  else if (toggleButton.isPressed()) {
    toggleButton.toggle();
  }
}

