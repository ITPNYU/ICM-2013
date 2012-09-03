





// in this game every visible object is a Rectangle
// (ball, paddle, bricks, even the game frame)
// are represented by a Rectangle:





// CAJA

import java.awt.geom.*;

public class Rectangle {

  //
  int width;
  int height;
  boolean hasStroke = false;
  color strokeColor;
  boolean hasFill = false;
  color fillColor;
  color opacity;
  //
  int x1;
  int y1;
  int x2;
  int y2;
  //
  //
  
  
  //
  Rectangle(int W, int H, boolean HASSTROKE, color STROKE, boolean HASFILL, color FILL) {
    width = W;
    height = H;
    hasStroke = HASSTROKE;
    strokeColor = STROKE;
    hasFill = HASFILL;
    fillColor = FILL;
    //
    opacity = 255;
  }
  
  
  
  //
  void setPosition(int X, int Y) {
    x1 = X;
    y1 = Y;
    x2 = x1+width;
    y2 = y1+height;
  }
  
 
 
  //
  void drawYourself(){
    // stroke
    if (hasStroke) {
      stroke(strokeColor);
    } else{
      noStroke();
    }
    // fill
    if (hasFill) {
      fill(fillColor, opacity);
    } else{
      noFill();
    }
    rect(recX+x1, recY+y1, width, height);
  }
  
  
  
  // COLLISION DETECTION FUNCTIONS
  
  boolean doesPointTouchMe (int PX, int PY){
    boolean result = false;
    if (PX >= x1 && PX <= x2) {
      if (PY >= y1 && PY <= y2) {
        result = true;
      }
    }
    return result; 
  }
    
    
    
  int whatSideDoesLineTouch (Line2D LINE, int VELX, int VELY){
      Line2D side;
      // top (1) / bottom (3)
      if (VELY>0){
        side = new Line2D.Float(x1,y1,x2,y1);
        if(LINE.intersectsLine(side)){
          return 1;
        }
      } else if (VELY<0){
        side = new Line2D.Float(x1,y2,x2,y2);
        if(LINE.intersectsLine(side)){
          return 3;
        }
      }
      // left (4) / right (2)
      if (VELX>0){
        side = new Line2D.Float(x1,y1,x1,y2);
        if(LINE.intersectsLine(side)){
          return 4;
        }
      } else if (VELX<0){
        side = new Line2D.Float(x2,y1,x2,y2);
        if(LINE.intersectsLine(side)){
          return 2;
        }
      }
      return 0;
  }
  
}
