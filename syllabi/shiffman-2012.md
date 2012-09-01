!! Introduction to Computational Media Syllabus
!!! Daniel Shiffman
* Tuesday, 12:05pm - 3:00pm, Room 50
* daniel.shiffman@nyu.edu
* [[https://itp.nyu.edu/inwiki/Signup/Shiffman | Office Hours Sign Up]]

* [[http://itp.nyu.edu/varwiki/Syllabus/ICM-All-F12 | General ICM Page]]: includes links to helpful resources, work from other sections, and instructions on how to upload your homework.
* [[http://itp.nyu.edu/varwiki/ClassWork/Homework-Shiffman-ICM-F12 | Homework Wiki]]: This is where you post links to your weekly assignments.
* [[http://processing.org/ | Main Processing page]]
* [[http://www.learningprocessing.com | book: www.learningprocessing.com]]
* [[http://processing.org/learning/books/ | Other Processing books available]]
* [[http://www.processing.org/learning/ | Processing site tutorials]]

!!!Week 1 -- Introduction and Drawing -- Sep 4
* Why are we here? What is computational media?  What is programming? What is it good for? What kinds of programming languages are there?
* Algorithmic Thinking
* What is Processing?  Why Processing?
* Server-side vs. client programming
* Things made with Processing: [[ClassWork/ProcessingLinks]]
* Drawing with numbers
** Coordinate Systems
** Shapes
** Color
* Code
** Processing reference
** Running your application
** Exporting: applet, application, android, javascript
* Watch
** Casey Reas [[https://vimeo.com/45851523 | Eyeo 2012 talk]] on Chance Operations
* Related Reading
** Chapters 1-2 from [[http://www.learningprocessing.com | Learning Processing]].
** Chapters 1-3 from [[http://my.safaribooksonline.com/9781449379827?portal=oreilly&cid=orm-cat-readnow-9781449379827 | Getting Started with Processing]]
* Downloading Processing
** Download Processing 2.0 (version and download links TBA): 
** This semester we are going to use Processing 2.0 (currently in version TBA).  The advantage of this is that this version of Processing includes Javascript mode, better support for video, and several other features.  The downside to using 2.0 is that it is new and will result in differences in the reference and examples on the Processing web site, as well as in the various Processing books.  Changes are documented on the [[http://wiki.processing.org/w/Changes | Processing wiki]].  If you think you have found a bug or are confused by a syntax difference, send an e-mail to the google group.

* Homework
** Sign up for the ICM Google Group: [[https://groups.google.com/a/itp.nyu.edu/group/icm]]
** Create your own screen drawing: self-portrait, alien, monster, etc. Use only 2D primitive shapes – arc(), curve(), ellipse(), line(), point(), quad(), rect(), triangle() – and basic color functions – background(), colorMode(), fill(), noFill(), noStroke(), stroke().  Remember to use size() to specify the dimensions of your window.
** Post a link to the homework wiki: [[ClassWork/Homework-Shiffman-ICM-F12]].  Instructions for how to do so are here: [[ClassWork/Homework-upload-instructions]]
** Examples: [[http://www.learningprocessing.com/examples/]] -- take a look at Chapter 1 and 2 (3 if you are feeling ambitious).

!!!Week 2 -- Animation -- Sep 11
* The flow: code blocks, setup, draw, and events: [[http://www.learningprocessing.com/examples/chapter-3/]]
* Variation: mouseX,mouseY
* Variables: Declare, Initialize, Use: [[http://www.learningprocessing.com/examples/chapter-4/]]
* Random
* Transformations
* Related Reading
** Chapters 3-4 from Learning Processing.
** Chapters 4-5 from [[http://my.safaribooksonline.com/9781449379827?portal=oreilly&cid=orm-cat-readnow-9781449379827 | Getting Started with Processing]]
* Homework
** Create a animated application. You can continue to elaborate on last week's assignment or you can design something new.  Use variables to change colors, grow and shrink your design, etc.  Start by working in pairs (according to the wiki: [[ClassWork/Homework-Shiffman-ICM-F11]]  You can post as a group or break off and complete the assignment individually.  

!!!Week 3 -- Interaction -- Sep 18
* Conditionals: [[http://www.learningprocessing.com/examples/chapter-5/]]
** If, else if, else
** Boolean variables
** Relational Operators, Logical Operators
** Buttons, rollovers, switches
* Loops: [[http://www.learningprocessing.com/examples/chapter-6/]]
** while
** for
* Related Reading
** Chapters 5-6 from Learning Processing.
** Chapters 4-5 from [[http://my.safaribooksonline.com/9781449379827?portal=oreilly&cid=orm-cat-readnow-9781449379827 | Getting Started with Processing]]
* Homework
** Use mouse and keyboard input to create an interactive drawing.  Use the new pairs (according to the wiki: [[ClassWork/Homework-Shiffman-ICM-F11]]).  You can post as a group or break off and complete the assignment individually.  

!!!Week 4 --  Functions & Objects: Part 1 --  Sep 25
* The Theory of Object Oriented Programming
* Functions: [[http://www.learningprocessing.com/examples/chapter-7/]]
** Re-usability
** Modularity
** Calling vs. Defining
** Parameter Passing
** Return types
** Recursion
*** [[http://www.learningprocessing.com/examples/chapter-13/example-13-8-recursion/ | Simple Fractal]]
*** [[http://www.learningprocessing.com/exercises/chapter-13/exercise-13-9-recursion/ | Branching Fractal]]
** Event functions
*** [[http://www.learningprocessing.com/examples/chapter-3/example-3-5/ | MousePressed & KeyPressed]]
* Intro to Objects
* Related Reading
** Chapters 7-8 from Learning Processing.
** Chapters 8-9 from [[http://my.safaribooksonline.com/9781449379827?portal=oreilly&cid=orm-cat-readnow-9781449379827 | Getting Started with Processing]]
* Homework
** Re-organize the code of a previous assignment or example using functions and objects.  If you are inspired by the power of modularity, feel free to elaborate on the assignment.  Work individually or in pairs (no pairs will be assigned this week.)  Post results to the wiki: [[ClassWork/Homework-Shiffman-ICM-F11]]

!!!Week 5 -- Functions & Objects Part 2 --  Oct 2
* Objects: [[http://www.learningprocessing.com/examples/chapter-8/]]
** Principles and Theory (Encapsulation)
** How-to
** The Constructor!
** Objects talking to objects
* Related Reading
** Chapters 7-8 from Learning Processing.
** Chapters 8-9 from [[http://my.safaribooksonline.com/9781449379827?portal=oreilly&cid=orm-cat-readnow-9781449379827 | Getting Started with Processing]]
* Homework
** Design a sketch in an object-oriented fashion.  Try to eliminate all code from the main tab (setup() and draw()) except for the core requirements (size(), background(), etc.) and calls to objects.

!!! No class Oct 9 -- FALL BREAK

!!!Week 6 -- Repetition and Reproduction: Oct 16
* Review loops: [[http://www.learningprocessing.com/examples/chapter-6/]]
* Arrays: [[http://www.learningprocessing.com/examples/chapter-9/]]
* A String is like an array of characters: [[http://processing.org/learning/text/]]
* What is an ArrayList?
* Related Reading
** Chapters 6 and 9, from Learning Processing.
** Chapter 10 from [[http://my.safaribooksonline.com/9781449379827?portal=oreilly&cid=orm-cat-readnow-9781449379827 | Getting Started with Processing]]
* Homework
** Using arrays and loops, write a program that creates multiple instances of an object (feel free to use an object you developed previously or create something new).  

!!!Week 7 -- Pixels: Oct 23
* Images [[http://www.learningprocessing.com/examples/chapter-15]]
** Load and display
** Sequence
** Image Processing and the Pixel Array
* Video: [[http://www.learningprocessing.com/examples/chapter-16/]]
** Live video input
** Move playback
* Contributed Processing Libraries
** JMyron: [[http://webcamxtra.sourceforge.net/]]
** OpenCV: [[http://ubaa.net/shared/processing/opencv/]]
** BlobDetection: [[http://www.v3ga.net/processing/BlobDetection/]]
** CCV + TUIO: [[http://ccv.nuigroup.com/]], [[http://www.tuio.org/?processing]]
** The Kinect!
* Related reading:
** Learning Processing, Chapters 15-16
* Homework: Pixels Project
** Develop a project that uses images and pixels.  For this project you are required to document your work in a blog post in addition to creating the Processing sketch.
*** A software mirror that colors a design according to live video pixels.
*** more suggestions will go here. . .

!!!Week 8 -- Data.  Oct 30
* Pixel project presentations.  
* Basics of working with Strings
** Tutorial: [[http://processing.org/learning/text/]]
** [[http://www.learningprocessing.com/examples/chapter-17]]
* Loading external data
** local text files, CSV data
*** [[http://www.learningprocessing.com/examples/chapter-18/example-18-1/ | User input]]
*** [[http://www.learningprocessing.com/examples/chapter-18/example-18-2/ | Graphing Comma-Separated Numbers from a Text File with loadStrings()]]
*** [[http://www.learningprocessing.com/examples/chapter-18/example-18-3/ | Creating Object from a Text File]]
** Saving
*** [[http://www.learningprocessing.com/examples/chapter-18/example-18-5/ | Loading and Saving Data to Text File with saveStrings()]]
*** [[http://processing.org/reference/PrintWriter.html | Saving mouse coordinates with print writer]]
** Loading from a URL
*** [[http://www.learningprocessing.com/examples/chapter-18/example-18-6/ | Word counts from Project Gutenberg]]
*** [[http://www.learningprocessing.com/exercises/chapter-18/exercise-18-10/ | Character counts from Project Gutenberg]]
** XML
*** [[http://www.learningprocessing.com/example-files/chapter18/2011/example_18_9_XMLBubbles.zip | Creating objects from data in local XML file]]
*** [[http://www.learningprocessing.com/example-files/chapter18/2011/example_18_5_simpleweather.zip | Yahoo Weather XML]]
*** [[http://www.learningprocessing.com/example-files/chapter18/2011/example_18_5_weathergrabberobject.zip | Yahoo Weather XML in an Object]] (leads to threading)
** ITP CakeMix
*** About CakeMix: [[https://github.com/runemadsen/Cakemix#readme]]
*** Download Processing CakeMix library: [[http://www.learningprocessing.com/example-files/chapter18/2011/cakemix.zip]] (temporary location)
** Discussion of APIs and Databases
** Discussion about Threads
*** [[http://wiki.processing.org/w/Threading]]
*** secret thread() function
** Web security in JS mode, sandbox, etc.
* Chapter 17-18, Learning Processing (Chapter 18 is pretty out of date)
* Data / Text projects and resources
** [[http://www.arras.net/brown_ewriting/?page_id=54 | What is Electronic Writing]]
** [[http://blog.blprnt.com/ | Jer Thorp]]
** [[http://www.binaryspark.com/current/ | Zoe Fraade-Blanar]]
** [[http://flowingdata.com/ | Flowing Data]]
** [[http://www.visualcomplexity.com/vc/ | Visual Complexity]]
** [[http://www.decontextualize.com/ | Adam Parrish]]
** [[http://www.youtube.com/watch?v=6NU3dIdqIBw&feature=related | William Burroughs Cut-ups]]
** [[http://www.youtube.com/watch?v=26e4cnTUym8 | Brion Gysin's permutation poetry]]
** [[http://turbulence.org/blog/2011/10/24/networked-art-10-projects-using-real-time-data/| 10 projects using real-time data]]
** [[http://www.visualthesaurus.com/ | Visual thesaurus]]
** [[http://cabspotting.org/ | Cabspotting]]
** [[http://www.worldmapper.org/ | World mapper]]
* Homework: Data Project
** Develop a project that uses an external data source.  For this project you are required to document your work in a blog post in addition to creating the Processing sketch.
*** A visualization of weather data.
*** more suggestions will go here. . .

!!!Week 9 -- Advanced Graphics: Nov 6
* P3D 
** translate, rotate, and scale
** 3D shapes, vertices
** textures
** lighting
** opengl rendering tricks
** loading models
** PShape
** PShader
* Homework: Prepare a final project proposal.  Create a web page or blog post with title, description, sample imagery, diagrams, Processing code, etc.  Presentations will be split over the next three weeks. Check the wiki for assigned date (but feel free to switch these around).

!!!Week 10 --  Propose Final Projects -- Nov 13
* '''Proposal Schedule: [[ClassWork/Homework-Shiffman-ICM-F12]]'''

!!!Week 11 -- Bonus Topics -- Nov 20
* Fun with JavaScript!
* Fun with Android!
* Fun with Java!
** Import Statements, Processing libraries vs. Java libraries
** Javadocs [[http://java.sun.com/j2se/1.5.0/docs/api/]]
** A book: [[http://www.oreilly.com/catalog/hfjava/]]
* Example Java classes
** [[http://java.sun.com/j2se/1.4.2/docs/api/java/util/ArrayList.html | ArrayList Documentation]], [[http://www.learningprocessing.com/examples/chapter-23/example-23-2/ | ArrayList Example]]
** [[http://java.sun.com/j2se/1.5.0/docs/api/java/awt/Rectangle.html | Rectangle Documentation]], [[http://www.learningprocessing.com/examples/chapter-23/example-23-3/ | Rectangle Example]]
** [[http://www.learningprocessing.com/examples/chapter-23/example-23/ | ArrayList & Rectangle]]
* try/catch, exception/error handling
* Related Reading
** Chapters 22 and 23 from Learning Processing

!!!Week 12 -- Final Project Presentations, Nov 27
* Please add your link to your final project documentation here: [[ClassWork/Homework-Shiffman-ICM-F12]]

!!!Requirements
* You are required to attend all class meetings and submit all weekly assignments, a midterm, and a final project.

* Grading (pass/fail) will be based on a combination of factors:
** Attendance, participation in class discussion, and engagement in other students' projects (25%)
** Quality of weekly assignments and midterm (50%) 
** Final Project (25%)
** Personal progress; how much did you advance from your initial state in this class.