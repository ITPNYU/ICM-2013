class SmileyFace {

  String emotion; 
  PVector location;
  int radius;
  color c;   
  float i = 0;

  SmileyFace(PVector _location) {
    
    location =_location;
    
    float r = random(1);
    if (r < 0.7) {
      emotion = "happy"; 
    } else {
      emotion = "sad";
    }
    
    
  
}

  void jiggle() {
     location.x += random(-10,10);
     location.y += random(-10,10);
  } 


  void display() {
    pushMatrix();
    translate(location.x,location.y);

    //head 
    noFill();
    ellipse(0, 0, 300, 300); 

    //eyes
    fill(0);
    ellipse(-50, - 60, 70, 40);
    ellipse(50, -60, 70, 40); 

    //smile 
    if (emotion == "happy") {
      noFill();
      arc(0, 0, 200, 200, 0, PI);
    }

    //frown
    else if (emotion == "sad") {
      arc(0, 80, 200, 150, PI, 2*PI);
    }

    //frightened
    else if (emotion == "scared") {
      fill(0); 
      ellipse(0, 61, 40, 40);
    }

    //neutral
    else {
      line(-70, 80, 80, 50);
    }
    popMatrix();
  }
}
