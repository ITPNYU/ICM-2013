// Two ball objects
Ball ball1;
Ball ball2;
// Global gravity variable
float gravity = 0.1;

void setup() { 
  size(640,360);   
  // Create ball objects
  ball1 = new Ball(50,0,16);
  ball2 = new Ball(100,50,32);
} 

void draw() { 
  background(255); 
  
  // Display ball objects
  ball1.display();
  ball2.display();

  // Move ball objects
  ball1.update();
  ball2.update();

} 

