/*
* Find words that end in "at"
* Makes use of String.split(), String.substring(), String.equals(), and concatenation.
*/


boolean foundRhyme = false;

// Slicing and dicing a string
String sentence;
String[] words;

void setup() {
  size(800, 480);

  // Split sentence into an array of words
  sentence = " The fat cat in the hat on the mat is really a rat ";
  words = sentence.split(" ");

  textAlign(CENTER);
}

void draw() {
  
  // Only redraw background if a rhyming word has been found
  if (foundRhyme) {
    background(0);
    foundRhyme = false;
  }
  
  // Pick a random word from the array of words
  String pickAWordAnyWord = words[int(random(words.length-1))];

  // Look for ones that end in "at"
  // How would you do this without having to check that the length of the word is > 2 characters?
  // Hint: Try String.match() function
  if (pickAWordAnyWord.length() > 2 && pickAWordAnyWord.substring(1, 3).equals("at")) {
    // Assign random font-size
    int fontSize = int(random(256));

    // If font-size is huge, add a "!" to the end of the word
    String exclamation = "";
    if (fontSize > 200) {
      exclamation = "!";
    }
    
    // Display the rhyming word
    textSize(fontSize);
    text(pickAWordAnyWord + exclamation, width/2, height-50);
    
    // Tell Processing you've found a rhyming word!
    foundRhyme = true;
  }
}

