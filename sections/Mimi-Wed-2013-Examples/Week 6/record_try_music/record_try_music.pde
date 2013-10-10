//The MIT License (MIT) - See Licence.txt for details

//Copyright (c) 2013 Mick Grierson, Matthew Yee-King, Marco Gillies


Maxim maxim;
Record record1;
Record record2;


void setup()
{
  size(400, 600);
  smooth();
  strokeWeight(2);
  ellipseMode(CORNER);

  maxim = new Maxim(this);
  
  // Create 2 records
  // Give them, x-location, y-location and AudioPlayer with audio file
  record1 = new Record(80, height* 0.5, maxim.loadFile("atmos1.wav"));
  record2 = new Record(230, height* 0.5, maxim.loadFile("bells.wav"));
  
}

void draw()
{
  background(255);
  record1.display();
  record2.display();
  record1.music();
  record2.music();

  fill(200);                                   //<-  ->
  textSize(12);
  text("ZOE", 20, 10);
  text("THE CLASS IS record AND U CAN ADD MORE DEPPENDINT ON ", 20, 30);
  text("x,y POS. SHOULD HEAR THE SOUND ONLY IF ABOVE RECORDS", 20, 50);
  text("doesnt quite work so, CLICK ON WHITE TO STOP", 20, 70);
}

