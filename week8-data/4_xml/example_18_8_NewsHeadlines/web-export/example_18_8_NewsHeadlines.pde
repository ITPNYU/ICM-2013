// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 18-8: Loading XML with simpleML

XML headlines;

void setup() {
  size(200, 200);

  xml = loadXML(this, "http://rss.news.yahoo.com/rss/topstories" );
}

void draw() {

  XML[] children = xml.getChildren("item");
  for (int i = 0; i < children.length; i++) {
    String headline = children.getChild("title");
    println(headline);
  }
  noLoop();
}


