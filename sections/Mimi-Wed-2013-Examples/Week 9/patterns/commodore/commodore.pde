
// Create a window 400 pixels wide by 400 pixels tall
size (400, 400);

// Set the background to black
background(0);

// Set the text color to white
fill(255);

// Initialize the text to be nothing.
String text = "";

// Set font-size to 20
int tSize = 20;
textSize(tSize);

// Display text in a grid
// Start off-screen and end off-screen
// by amounts based on text-size
for (int x = -tSize; x < width+tSize; x+=tSize/2) {
  for (int y = -tSize; y < height+tSize; y +=tSize/2) {
    
    // calculate col and row position of text
    int col = (int) x / tSize;
    int row = (int) y / tSize;
    
    // Use modulo to play with different text
    
    // write "=" every 42nd column
    if (col%42 == 0)
      text = "=";
      
    // Or write "^" every 18th row
    else if(row%18 == 0)
      text = "^";
      
    // Or write ")" every 37th column
    else if(col%37 == 0)
      text = ")";
      
    // Or write "(" every 6th row
    else if(row%6 == 0)
      text = "(";
   
    // Otherwise write ">"
    else
      text = ">";

    text(text, x, y);
    
  }
}

