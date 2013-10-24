size(600, 600);
background(255);

// DEFINE A STRING
String word = "hello";
println("THE WORD: " + word);

// LOAD A FONT
PFont font = loadFont("Apple-Chancery-24.vlw");
// USE THE FONT
textFont(font);
// SET FONT SIZE
textSize(24);

// SET ELLIPSE COLOR
fill(255, 0, 0);
// DRAW A CRIRCLE THAT'S 10 PIXELS WIDER/TALLER THAN THE WORD
ellipse(width/2, height/2, textWidth(word) + 10, textWidth(word) + 10);

// SET FONT COLOR
fill(0);
// CENTER ALIGN TEXT SO IT SITS IN THE MIDDLE OF THE ELLIPSE
textAlign(CENTER, CENTER);
// DRAW THE WORD IN THE MIDDLE OF THE ELLIPSE
text(word, width/2, height/2);

// CREATE A NEW WORD
String newWord = "";
// ADD LETTERS FROM ORIGINAL WORD TO NEW WORD ONE LETTER AT A TIME
// USING CONCATENATION
// ADD A COMMA AFTER EACH LETTER
for(int i = 0; i < word.length(); i++) {
  newWord += word.charAt(i) + ",";
  println("Adding the letter at index " + i + ": " + newWord);
}

// SPLIT NEW WORD ON THE COMMA INTO AN ARRAY OF LETTERS
String[] letters = split(newWord, ",");

for(int i = 0; i < letters.length; i++) {
   println("Split out letter at index " + i  + " of: " + letters[i]); 
  
}

// REJOIN THE ARRAY OF LETTERS INTO A NEW STRING, DELIMITED BY COLONS
String rejoinedWord = join(letters, ":");
println("REJOINED WORD: " + rejoinedWord);



