
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
  table = loadTable("data.csv","header");

  // The size of the array of Bubble objects is determined by the total number of rows in the CSV
  bubbles = new Bubble[table.getRowCount()]; 

  // You can access iterate over all the rows in a table
  int rowCount = 0;
  for (TableRow row : table.rows()) {
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
  TableRow row = table.addRow();
  row.setFloat("x", mouseX);
  row.setFloat("y", mouseY);
  row.setFloat("diameter", random(40, 80));
  row.setString("name", "Blah");
<<<<<<< HEAD
  
  // Writing the CSV back to the same file
  saveTable(table, "data.csv");
=======

  // Writing the CSV back to the same file
  saveTable(table,"data/data.csv");
>>>>>>> d0c048e9c846ff86c0146dbf5329ce05ff279ed9
  // And reloading it
  loadData();
}

