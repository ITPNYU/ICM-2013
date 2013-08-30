// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// An XML object
XML headlines;

// This boolean variable will tell us if the thread is running or not
boolean loading = false;

// An angle for animating a spinning plus
float angle = 0;

void setup() {
  size(640, 360);
  // We spawn a separate thread
  // The name of the function that will run as its own thread is passed in as a String
  thread("loadData");
}

void draw() {
  //println(headlines);
  background(0);

  // Since the headlines are loading in a thread, let's make sure they aren't null
  if (headlines != null) {
    // Parse all the XML
    XML[] children = headlines.getChild("channel").getChildren("item");
    for (int i = 0; i < children.length; i++) {
      String headline = children[i].getChild("title").getContent();

      fill(255);
      text(headline, 10, 16+i*16);
    }
  }

  // If we're loading new headlines, spin a plus
  if (loading) {
    translate(540, 40);
    pushMatrix();
    rotate(angle);
    stroke(255);
    strokeWeight(4);
    line(-10, 0, 10, 0);
    line(0, -10, 0, 10);
    popMatrix();
    text("loading",-15,25);
    angle += 0.2;
  }

   
  // Every 180 frames we'll reload
  if (frameCount % 180 == 0) {
    thread("loadData");
  }
}

void loadData() {
  loading = true;  // We are loading!
  delay(1000);     // We don't want to do this but making it take longer just to demo the thread
  // Load the XML
  headlines = loadXML("http://rss.news.yahoo.com/rss/topstories" );
  // We're done loading!
  loading = false;
}

