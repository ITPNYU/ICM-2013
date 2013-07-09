import processing.video.*;

Movie myMovie;
int currentTime;
int[] mousDownLocs;
int[] mouseUpLocs;

void setup(){
  size(600,800);
  myMovie = new Movie (this, "/Users/dano/Downloads/1.2_pvector_class_(the_nature_of_code)_640x360.mp4");
  myMovie.play();
  ellipseMode(CENTER);
}

void draw(){
  background(255);
  image(myMovie,0,0);
  fill(127);
  rect(myMovie.height,width,30);
  int currentLoc = width*float(myMovie.time())/myMovie.duration();
  fill(255,0,0);
  ellipse(currentLoc,myMovie.height+ 15,30,30);
}

void movieEvent(Movie _m){
  _m.read();
}



