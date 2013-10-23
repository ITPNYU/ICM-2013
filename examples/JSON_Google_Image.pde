import java.io.*;
String query = "";

void setup() {
  size(640, 480);
  background(0);
  fill(255, 255, 255);
}

void draw() {
}

void queryGoogleImages(String _q) {
  String url = "https://ajax.googleapis.com/ajax/services/search/images?v=1.0&q=" + _q;
  //this is a special url for getting google image results as json
  println(url);
  JSONObject result =  loadJSONObject(url);
  //make a network call and get the results back into a json object
  println(result);
  //make sure the results are not an error
  int status = result.getInt("responseStatus");
  if (status != 200) {
    String reason = result.getString("responseDetails");
    //this sucks that google does not allow you to do very many of these in a row
    println("You are too fast, take a break." + reason);
    return;
  }
  //go one level down in to the results to just get the data not the info about the package
  JSONObject response = result.getJSONObject("responseData");
  println(response);
  //get the arrary of stuff you got back
  JSONArray values = response.getJSONArray("results");
  int vOffset = 20;
  for (int i = 0; i < min(values.size(),3); i++) {
    //pick out the picture information for each picture
    JSONObject thisGuy = values.getJSONObject(i); 
    String r = thisGuy.getString("url");
    int w = thisGuy.getInt("tbWidth");
    int h = thisGuy.getInt("tbHeight");
    println(r + " "+ w + " " + h );
    PImage thisImage = loadImage(r);
    if (thisImage != null) {
      image(thisImage, 10, vOffset, w, h);
    }
    else {
      text((i + 1) + " key", 10, vOffset+13);
      rect(10, vOffset, w, h);
    }
    //make vOffset bigger so we will draw the next picture below this one.
    vOffset  += h;

  }//end for
}

void keyPressed() {
  if (keyCode == RETURN || keyCode == ENTER) {
    background(0);
    queryGoogleImages(query); //execute the query
    query = "";  //clear the query
  } 
  else if (key > 48 && key < 123) {  //letters and numbers only
    query = query + key;
    text(query, 100, 100);  //draw the query so far on the scrren
  }
}
