// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// An Array of Bubble objects
Bubble[] bubbles;
// The new Processing Table class!
Table table;

void setup() {
  size(640, 360);
  loadData();
}

void draw() {
  background(255);
  // Display and move all bubbles
  for (int i = 0; i < bubbles.length; i ++ ) {
    bubbles[i].display();
    bubbles[i].rollover(mouseX, mouseY);
  }

  textAlign(LEFT);
  fill(0);
  text("Click to add circles.", 10, height-10);
}

void loadData() {
  // Load text file into a Table object
  table = loadTable("data.txt");
  table.removeTitleRow();  // shave off the first row and use it for names

  // The size of the array of Bubble objects is determined by the total number of rows in the CSV
  bubbles = new Bubble[table.getRowCount()]; 

  // You can access iterate over all the rows in a table
  int rowCount = 0;
  for (TableRow row : table) {
    // You can access the fields via their column index
    float x = row.getFloat("x");
    float y = row.getFloat("y");
    float d = row.getFloat("diameter");
    String n = row.getString("name");
    // Make a Bubble object out of the data read
    bubbles[rowCount] = new Bubble(x, y, d, n);
    rowCount++;
  }  

}

void mousePressed() {
  // When the mouse is clicked we set the values for a new row
  int newRow = table.getRowCount();
  table.setFloat(newRow, 0, mouseX);
  table.setFloat(newRow, 1, mouseY);
  table.setFloat(newRow, 2, random(40, 80));
  table.setString(newRow, 3, "Blah");

  // Writing the CSV back to the same file
  File f = new File(sketchPath("data/data.txt"));
  table.writeCSV(f);
  // And reloading it
  loadData();
}

