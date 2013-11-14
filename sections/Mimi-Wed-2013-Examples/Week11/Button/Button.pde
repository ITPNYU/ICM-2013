Button button1;
Button button2;
boolean inMode1;
boolean inMode2;

void setup() {
  size(400, 400); 
  button1 = new Button(width/2, height/3, "Hello", color(150, 255, 150)); 
  button2 = new Button(width/2, 2*height/3, "Goodbye", color(255, 150, 150));
}


void draw() {
  if(inMode1) {
   bgColor = color(150, 255, 150);  
    
  }
  else if(inMode2) {
    bgColor = color(255, 150, 150);
    
  }
  else {
   bigColor = 255; 
    
  }
  
  background(bgColor);
  
  button1.display();
  button2.display();

}

void mousePressed() {
  if (button1.isPressed()) {
    inMode1 = true;
  } 
  else if (button2.isPressed()) {
    inMode2 = true;
  }
}

