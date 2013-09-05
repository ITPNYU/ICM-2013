// Set size of window to 640 pixels wide by 480 pixels tall
size(640, 480);
// Set background color
background(255, 178, 15);
// Turn off stroke for following shapes
noStroke();
// Set fill color for following shapes
fill(46, 89, 200);
// Draw a square 60 pixel wide by 60 pixel tall square
// at 50 pixels from the left and 70 pixels from the top
rect(50, 70, 60, 60);
// Turn stroke back on for following shapes and make it black
stroke(0);
// Make the stroke 20 pixels thick
strokeWeight(20);
// Give the stroke a square ending
strokeCap(SQUARE);
// Set the fill to a new color for following shapes 
fill(255, 89, 50);
// Draw an ellipse 85 pixels wide by 55 pixels tall
// at 45 pixels from the left and 70 pixels from the top
ellipse(45, 70, 85, 55);
// Set the stroke to a new color and
// give it a transparency value of 50 (out of 255)
stroke(255, 50);
// Draw a line from 80 pixels from the left and 90 pixels from the top
// to 105 pixels from the left and 400 pixels from the top
line(80, 90, 105, 400);
// Draw a dot at 600 pixels from the left and 400 pixels from the top
point(600, 400);
