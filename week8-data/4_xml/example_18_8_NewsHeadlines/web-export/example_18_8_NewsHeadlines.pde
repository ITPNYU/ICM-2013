// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// An XML object
XML headlines;

void setup() {
  size(640, 360);

  // Call function that loads the XML
  loadData();
}

void draw() {
  background(0);

  // Find all the children marked "item"
  XML[] children = headlines.getChild("channel").getChildren("item");

  // Loop through them all and get each "title"
  for (int i = 0; i < children.length; i++) {
    String headline = children[i].getChild("title").getContent();

    // Draw each title as a String
    fill(255);
    text(headline, 10, 16+i*16);
  }
}

void loadData() {
  headlines = loadXML("http://www.nytimes.com/services/xml/rss/nyt/pop_top.xml" );
}

// Reload the headlines by clicking the mouse
void mousePressed() {
  loadData();
}


