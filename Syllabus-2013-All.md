Introduction to Computational Media Syllabus
============================================
- [General ICM Page](https://github.com/ITPNYU/ICM-2013/blob/master/README.md): includes links to helpful resources, work from other sections, and instructions on how to upload your homework.
- [Main Processing page](http://processing.org/)
- [book: www.learningprocessing.com](http://www.learningprocessing.com)
- [Other Processing books available](http://processing.org/learning/books/)
- [Processing site tutorials](http://www.processing.org/learning/)

Section Pages and Homework Wikis
--------------------------------

- Shiffman, Tuesday, 12:05-3:00pm: This section is for students with prior programming experience and has a different syllabus.  See [Tuesday Shiffman Syllabus](https://github.com/ITPNYU/ICM-2013/blob/master/Syllabus-2013-Shiffman-Tues.md)
- Shiffman, Wednesday, 12:05-3:00pm:  [Section Info](https://github.com/ITPNYU/ICM-2013/blob/master/sections/Shiffman-Wed-2013.md), [Section Homework](https://github.com/ITPNYU/ICM-2013/wiki/Homework-Shiffman-Wednesday)
- Danny, Wednesday, 9:05-12:00 and 3:05-6:00:  [Section Info](https://github.com/ITPNYU/ICM-2013/blob/master/sections/Rozin-Wed-2013.md), [Morning Homework](https://github.com/ITPNYU/ICM-2013/wiki/Homework-Rozin-Wed_Morning), [Afternoon Homework](https://github.com/ITPNYU/ICM-2013/wiki/Homework-Rozin-Wed-afternoon)
- Dano, Tuesday, 12:05-3:00pm:  [Section Info](https://github.com/ITPNYU/ICM-2013/blob/master/sections/Dano-Tues-2013.md), [Section Homework](https://github.com/ITPNYU/ICM-2013/wiki/Homework-Dano-Tuesday)
- Dano, Wednesday, 12:05-3:00pm:  [Section Info](https://github.com/ITPNYU/ICM-2013/blob/master/sections/Dano-Wed-2013.md), [Section Homework](https://github.com/ITPNYU/ICM-2013/wiki/Homework-Dano-Wednesday)
- Mimi, Wednesday, 6:05-9:00pm: [Section Info](https://github.com/ITPNYU/ICM-2013/blob/master/sections/Mimi-Wed-2013.md), [Section Homework](https://github.com/ITPNYU/ICM-2013/wiki/Homework-Mimi-Wednesday)


Week 1 -- Introduction and Drawing
----------------------------------
- Why are we here? What is computational media?  What is programming? What is it good for? What kinds of programming languages are there?
- Algorithmic Thinking
- What is Processing?  Why Processing?
- Server-side vs. client programming
- [Things made with Processing](https://github.com/ITPNYU/ICM-2013/wiki/Projects)
- Drawing with numbers
- Processing's screen coordinates
- Processing's drawing and color functions
    - [rect() and rectMode() demo](http://itp.nyu.edu/~ck987/rectDemo/)
    - [ellipse() and ellipseMode() demo](http://itp.nyu.edu/~ck987/ellipseDemo/)
    - [fill() greyscale and color demo](http://itp.nyu.edu/~ck987/colorDemo/)
- [Processing reference](http://processing.org/reference)
- Running your application
- Exporting: application, android, javascript
- [Abstract Modern Art](http://www.abstractmodernart.com/) for inspiration
    - [Piet Mondrian](http://images.google.com/images?q=mondrian)
    - [Ron Gang](http://www.iarc.org/~4x1mk/nonfig1.htm)
    - [Sol Lewitt](http://www.ericdoeringer.com/ConArtRec/LeWitt/LeWitt.html)
- Watch
    - Casey Reas [Eyeo 2012 talk](https://vimeo.com/45851523) on Chance Operations
    - [Video Lessons](http://icm.shiffman.net/) 0.0-2.1 duplicate what we will cover in class.  Watch 3.0-4.3 to preview next week's content.
- Related Reading
    - Chapters 1-2 from [Learning Processing](http://www.learningprocessing.com).
    - Chapters 1-3 from [Getting Started with Processing](http://my.safaribooksonline.com/9781449379827?portal=oreilly&cid=orm-cat-readnow-9781449379827)
- Downloading Processing
    - Download [Processing 2.0](http://www.processing.org/download/) 
- Homework
    - Sign up for the [ITP ICM Google Group](https://groups.google.com/a/itp.nyu.edu/group/icm) (also sign up for your section's group)
    - Create your own screen drawing: self-portrait, alien, monster, etc. Use only 2D primitive shapes – arc(), curve(), ellipse(), line(), point(), quad(), rect(), triangle() – and basic color functions – background(), colorMode(), fill(), noFill(), noStroke(), stroke().  Remember to use size() to specify the dimensions of your window.
    - Sign up for a [Github Account](http://github.com).  You are not required to use github, but you will need an account to edit the wiki here.
    - Post a link to your work on your [section's wiki](https://github.com/ITPNYU/ICM-2013/wiki).  Follow the guidelines provided on the wiki.
    - Examples: https://github.com/shiffman/LearningProcessing -- take a look at Chapter 1 and 2 (3 if you are feeling ambitious).

Week 2 -- Animation
-----------------------------
- The flow: code blocks, setup, draw, and events: https://github.com/shiffman/LearningProcessing/tree/master/chp03_flow
- Variation: mouseX,mouseY
- Variables: Declare, Initialize, Use: https://github.com/shiffman/LearningProcessing/tree/master/chp04_variables
- [random()](http://processing.org/reference/random_.html)
- [map()](http://processing.org/reference/map_.html) 
- Related Reading
    - Chapters 3-4 from Learning Processing.
    - Chapters 4-5 from [Getting Started with Processing](http://my.safaribooksonline.com/9781449379827?portal=oreilly&cid=orm-cat-readnow-9781449379827)
- Watch (previews next week's content)
    -  [Videos 5.0-6.6](http://icm.shiffman.net/5.0/)
- Homework
    - Create a animated application. Start over from scratch and build something with a very simple design. Focus on the logic of variables and avoid using hard-coded values. Play with mouseX and mouseY.  Start by working in pairs (according to list below).   You can post together or break off and complete the assignment individually.  If you are stuck, here are some ideas.
        - Experiment with motion using a single simple shape. Can you create a randomly jittering "nervous" square? ([Here is a sample](https://github.com/ITPNYU/ICM-2013/blob/master/examples/week2-exercises/motion/nervous_square/nervous_square.pde)). A circle that spirals around the window?  How could user interaction affect the shape's motion?
        - Use [random()](http://processing.org/reference/random_.html) to create a painting system.  [Here are some examples](https://github.com/ITPNYU/ICM-2013/tree/master/examples/week2-exercises/random%20paintings).  

Week 3 -- Interaction
-----------------------------
- Conditionals: https://github.com/shiffman/LearningProcessing/tree/master/chp05_conditionals
    - If, else if, else
    - Boolean variables
    - Relational Operators, Logical Operators
    - Buttons, rollovers, switches
- Loops: https://github.com/shiffman/LearningProcessing/tree/master/chp06_loops
    - while
    - for
- Modulo
- Additional examples from Chris Kairalla
    - [more complicated mouse draw](http://itp.nyu.edu/~ck987/week2/mouseDraw/)
    - [bouncing ball demo](http://itp.nyu.edu/~ck987/icm2011/week2/ballbounce/)
    - [conditional expression demo](http://itp.nyu.edu/~ck987/week2/quadRoll/)
    - [rectangle rollover demo](http://itp.nyu.edu/~ck987/week3/in_rect_demo/)
    - [Modulo demo](http://itp.nyu.edu/~ck987/week3/moduloDemo/)
- Related Reading
    - Chapters 5-6 from Learning Processing.
    - Chapters 4-5 from [Getting Started with Processing](http://my.safaribooksonline.com/9781449379827?portal=oreilly&cid=orm-cat-readnow-9781449379827)
- Watch (preview next week's content)
    -  [Videos 7.0-7.3](http://icm.shiffman.net/7.0/)
- Supplemental Reading
    - ["Hackers and Painters"](http://www.paulgraham.com/hp.html) by Paul Graham
- Homework: In general this week, you should work with rule-based animation, motion, and interaction.  You can use the ideas below or invent your own assignment.  Start by working in pairs according to the wiki.  Can you divide an idea into two parts and combine those parts?  Can you swap sketches and riff of of your partner's work? You can post together or break off and complete the assignment individually.
    - As an exercise, try making a rollover, button, or slider from scratch.  Compare your code to the [examples on github](https://github.com/ITPNYU/ICM-2013/tree/master/examples/week3-exercises/Traditional%20GUI).  Moving beyond the exercise, can you invent new GUI elements beyond buttons, sliders, rollovers, etc.?
    - Create an algorithmic design with simple parameters.  A good model is 10PRINT based on the [examples provided here](https://github.com/ITPNYU/ICM-2013/tree/master/examples/week3-exercises/10print).  There is also a [nice discussion on the Processing forum](https://forum.processing.org/topic/challenge-processing-variations-of-10-print-chr-205-5-rnd-1-goto-10).  You can also read the [10 Print book online as a PDF](http://10print.org/).
    - Consider tying the above two together and have a GUI control your 10PRINT visualization or motion sketch.
    - Invent your own exercise related to animation and interaction.

Week 4 --  Functions & Objects: Part 1
-----------------------------
- The Theory of Object Oriented Programming
- Functions: https://github.com/shiffman/LearningProcessing/tree/master/chp07_functions
    - Re-usability
    - Modularity
    - Calling vs. Defining
    - Parameter Passing
    - Return types
    - Recursion
        - [Simple Fractal](http://www.learningprocessing.com/examples/chapter-13/example-13-8-recursion/)
        - [Branching Fractal](http://www.learningprocessing.com/exercises/chapter-13/exercise-13-9-recursion/)
    - Event functions
        - [MousePressed & KeyPressed](http://www.learningprocessing.com/examples/chapter-3/example-3-5/)
- Intro to Objects
- Watch (preview next week's content)
    -  [Videos 8.0-8.3](http://icm.shiffman.net/8.0/)
- Related Reading
    - Chapters 7-8 from Learning Processing.
    - Chapters 8-9 from [Getting Started with Processing](http://my.safaribooksonline.com/9781449379827?portal=oreilly&cid=orm-cat-readnow-9781449379827)
- Homework
    - Re-organize the code of a previous assignment or example using functions.  If you are inspired by the power of modularity, feel free to elaborate on the assignment.  Work individually or in pairs (no pairs will be assigned this week.)

Week 5 -- Functions & Objects Part 2
-----------------------------
- Objects: https://github.com/shiffman/LearningProcessing/tree/master/chp08_objects
    - Principles and Theory (Encapsulation)
    - How-to
    - The Constructor!
    - Objects talking to objects
- Related Reading
    - Chapters 7-8 from Learning Processing.
    - Chapters 8-9 from [Getting Started with Processing](http://my.safaribooksonline.com/9781449379827?portal=oreilly&cid=orm-cat-readnow-9781449379827)
- Watch (preview next week's content)
    -  [Videos 9.0-9.4](http://icm.shiffman.net/9.0/)
- Homework
    - Design a sketch in an object-oriented fashion.  Try to eliminate all code from the main tab (setup() and draw()) except for the core requirements (size(), background(), etc.) and calls to objects.
        - For example: Consider building a [particle system](http://en.wikipedia.org/wiki/Particle_system).  A particle system can be used to simulate: rain, snow, fireworks, explosions, smoke, etc.  For this week, you would create a Particle class to describe a single particle and try to get two particles on the screen using separate variables. (Then next week, after we learn arrays, you would visualize hundreds (or thousands) of particles on the screen.)
    - E-mail the code for a class to your assigned partner on the wiki.  You'll get one from them too.  Try incorporating the class sent to you into your sketch.   Write some thoughts about this process on your blog -- Did anything not work?  Could you follow your partner's code?  Were comments helpful?  (If you are feeling saucy, you could try to use github for this collaboration.)

Week 6 -- Repetition and Reproduction
-----------------------------
- Review loops: https://github.com/shiffman/LearningProcessing/tree/master/chp06_loops
- Arrays: https://github.com/shiffman/LearningProcessing/tree/master/chp09_arrays
- A String is like an array of characters: http://processing.org/learning/text/
- An image is like an array of pixels: http://processing.org/learning/pixels/
- What is an ArrayList?
    - [ArrayList Reference](http://processing.org/reference/ArrayList.html), [JavaDoc](http://docs.oracle.com/javase/6/docs/api/java/util/ArrayList.html)
    - [ArrayList example 1](https://github.com/shiffman/LearningProcessing/tree/master/chp23_java/example_23_2_ArrayList), [ArrayList Example 2](https://github.com/shiffman/LearningProcessing/tree/master/chp23_java/example_23_4_ArrayList_Rectangle)
    - [ArrayList video](http://video.natureofcode.com/4.2/)
- Related Reading
    - Chapters 6 and 9, from Learning Processing, Chapter 23 for ArrayLists.
    - Chapter 10 from [Getting Started with Processing](http://my.safaribooksonline.com/9781449379827?portal=oreilly&cid=orm-cat-readnow-9781449379827)
- Homework
    - Using arrays and/or ArrayLists, write a program that creates multiple instances of an object (feel free to use an object you developed previously or create something new). Here are some additional ideas if you are stuck.
        - Experiment with the resizable nature of ArrayLists.  Can you add objects one at a time?  Remove them after a certain amount of time or when they leave the screen?  Can objects from on ArrayList trigger the birth of other objects?
        - Create an object that stores the history of its own path.  This might be a drawing program where you keep a history of mouse locations in an ArrayList or a shape that moves around the screen autonomously and draws its own trail.  Can you have an ArrayList of these objects (each of which tracks its own ArrayList?).
        - A String is like an array of characters.  Can you create a sketch that plays with text by looping through the "array" inside a String.  See: [charAt()](http://processing.org/reference/String_charAt_.html)
        - A PImage contains an array of pixels.  Experiment with image processing by looping through all the pixel colors of an image.  This [tutorial](http://processing.org/tutorials/pixels/) will help you get started.
        - Create a system that involves a two dimensional grid.  Use a 2D array to store the data of this system.  This [tutorial](http://processing.org/tutorials/2darray/) will help you get started.

Week 7 -- Pixels
--------------------------------
- Images
    - Load and display
    - Sequence
    - Image Processing and the Pixel Array
- Video: 
    - Live video input
    - Movie playback
- Examples:
    - In class: https://github.com/ITPNYU/ICM-2013/tree/master/old%202012/shiffman-in-class-examples/week7
    - Updated chapter 15: https://github.com/ITPNYU/ICM/tree/master/LearningProcessing/chp15
    - Updated chapter 16: https://github.com/ITPNYU/ICM/tree/master/LearningProcessing/chp16
    - Examples from Comperas Class: 
        - [Install SimpleOpenNI Library](https://code.google.com/p/simple-openni/wiki/Installation#OSX)
        - [Kinect Track Closest](https://github.com/ITPNYU/Comperas/tree/master/KinectTrackClosest)
        - [Kinect Track Body Parts](https://github.com/ITPNYU/Comperas/tree/master/KinectBodyPartLocations)
        - [Assorted Camera Tracking Stuff](https://github.com/ITPNYU/Comperas)
- Contributed Processing Libraries
    - Kinect: http://code.google.com/p/simple-openni/, http://www.shiffman.net/p5/kinect/ (possibly out of date)
    - OpenCV: http://www.mon-club-elec.fr/pmwiki_reference_lib_javacvPro/pmwiki.php -- new OpenCV library for Processing 2.0!  In french.  Also, see: http://codeanticode.wordpress.com/2011/11/21/opencv-2-in-processing/
    - BlobDetection: http://www.v3ga.net/processing/BlobDetection/
    - CCV + TUIO: http://ccv.nuigroup.com/, http://www.tuio.org/?processing
- Related reading:
    - Learning Processing, Chapters 15-16
- Homework: Pixels Project
    - Develop a project that uses images and pixels.  For this project you should document your work in a blog post in addition to creating the Processing sketch.  Note that examples that use Capture of Movie will not work in JavaScript mode.  You can present in class using your laptop or put your sketch into dropbox.  Here are some ideas:
        - Create a software mirror by designing an abstract drawing machine which you color according to pixels from live video.
        - Create a video player.  Consider combining your pcomp media controller assignment and build a Processing sketch that allows you to switch between videos, process pixels of a video, scrub a video, etc.
        - Use the kinect to track a skeleton.  Can you "puppeteer" an avatar/animation with the kinect?
    - Note that only the names in bold (1/2 of the class) on the wiki will present next week. The second half will present the "data" assignment the following week. You should all complete both assignments, however, and of course you can present both weeks if you have a question or something you really want to get feedback on. Feel free to switch with each other or e-mail me if you would like to switch.

Week 8 -- Data
-----------------------------
- Pixel project presentations.  
- Basics of working with Strings
    - Tutorial: http://processing.org/learning/text/
    - Examples: https://github.com/ITPNYU/ICM/tree/master/week8-data/1_Strings
    - [Java String documentation](http://docs.oracle.com/javase/1.5.0/docs/api/java/lang/String.html)
    - [Chris Kairalla String Basics Demo](http://itp.nyu.edu/~ck987/icm2012/week8/strings/)
- Loading (and saving) external data to local files
    - loadStrings(): https://github.com/ITPNYU/ICM/tree/master/week8-data/2_loadStrings
    - loadTable(): https://github.com/ITPNYU/ICM/tree/master/week8-data/3_loadTable
- Loading from URL
    - [Chris Kairalla HTML Scraping Demo](http://itp.nyu.edu/~ck987/icm2012/week8/html_scrape/)
    - [Word counts from Project Gutenberg](http://www.learningprocessing.com/examples/chapter-18/example-18-6/)
    - [Character counts from Project Gutenberg](http://www.learningprocessing.com/exercises/chapter-18/exercise-18-10/)
- XML
    - https://github.com/ITPNYU/ICM/tree/master/week8-data/4_xml
- Threads
    - http://wiki.processing.org/w/Threading
    - https://github.com/ITPNYU/ICM/tree/master/week8-data/6_threads
- Discussion of APIs and Databases
- Web security in JS mode, sandbox, etc.
- Connecting with CommLab web
    - Chris Kairalla's Joke Demo: http://itp.nyu.edu/~ck987/sinatra/joke-repo
    - [Joke Repo Web App source code](https://github.com/chris3000/joke-repo)
    - [Joke Client in Processing](http://itp.nyu.edu/~ck987/icm2012/week8/joke_client/) -XML VERSION
    - [Joke Client in Processing](http://itp.nyu.edu/~ck987/icm2012/week8/joke_client_json/) -JSON VERSION
- You can read Chapters 17-18 from Learning Processing but chapter 18 is especially out of date.
- Data / Text projects and resources
    - Eyeo Festival Talks:
        - http://vimeo.com/48625144, http://vimeo.com/45838408, http://vimeo.com/45537437, http://vimeo.com/45091945
    - [What is Electronic Writing](http://www.arras.net/brown_ewriting/?page_id=54)
    - [Jer Thorp](http://blog.blprnt.com/)
    - [Zoe Fraade-Blanar](http://www.binaryspark.com/current/)
    - [Flowing Data](http://flowingdata.com/)
    - [Visual Complexity](http://www.visualcomplexity.com/vc/)
    - [Adam Parrish](http://www.decontextualize.com/)
    - [William Burroughs Cut-ups](http://www.youtube.com/watch?v=6NU3dIdqIBw&feature=related)
    - [Brion Gysin's permutation poetry](http://www.youtube.com/watch?v=26e4cnTUym8)
    - [10 projects using real-time data](http://turbulence.org/blog/2011/10/24/networked-art-10-projects-using-real-time-data/)
    - [Visual thesaurus](http://www.visualthesaurus.com/)
    - [Cabspotting](http://cabspotting.org/)
    - [World mapper](http://www.worldmapper.org/)
    - [Wind Map](http://hint.fm/wind/)
- Homework: Data Project
    - Develop a project that uses an external data source.  For this project you should document your work in a blog post (and link below) in addition to creating the Processing sketch.  Note that certain methods for grabbing data will not work in JavaScript mode.  You can present in class using your laptop or put your sketch into dropbox.  Here are some ideas:
        - Create a game that saves a high score list to a text file.
        -  Track personal data over the course of a few days (exercise, sleep, computer use, eating, etc.).  Enter the data into a CSV file and visualize.
        -  Count word frequencies in two different text sources (i.e. two different authors, two different newspapers, two different political speeches) and visualize the concordance.
        -  Visualize weather data (http://developer.yahoo.com/weather/)
        - Connect a Processing sketch to a web app that you create (applicable if you are taking ICM web).
    - If you do not present your pixels assignment, you will present you data assignment next week.

Week 9 -- Bonus Topics (we will not do all of these in class but there will be a sampling)
-----------------------------
- Translate, Rotate, Scale: http://processing.org/learning/transform2d/
    - Examples from Chris Kairalla
        - [Godzilla](http://itp.nyu.edu/~ck987/icm2012/week9/godzilla/)
        - [Danny Rozin's Clock](http://itp.nyu.edu/~ck987/icm2012/week9/clock/)
        - [Danny Rozin's 3D Box Grid](http://itp.nyu.edu/~ck987/icm2012/week9/3d_box_grid/)
        - [Solar System](http://itp.nyu.edu/~ck987/icm2012/week9/planets/) - Advanced Level Demo
- P3D: http://processing.org/learning/p3d/
    - 3D shapes, vertices
    - textures
    - lighting
    - shaders
- PShape: http://processing.org/learning/pshape/
- PGraphics
    - Examples from Chris Kairalla
        - [Simple PGraphics Demo](http://itp.nyu.edu/~ck987/icm2012/week9/pgraphics/)
        - [PGraphics Grid](http://itp.nyu.edu/~ck987/icm2012/week9/pgraphics_grid/)
- PVector: 
    - [In-Class examples](https://github.com/ITPNYU/ICM/tree/master/in-class-examples/week11/PVectorExamples)
    - [Nature of Code vector chapter](http://natureofcode.com/book/chapter-1-vectors/)
- ArrayList
    - [History of mouse movements](https://github.com/ITPNYU/ICM/blob/master/in-class-examples/week11/PVectorExamples/TrailPVectorArrayList/TrailPVectorArrayList.pde)
    - [Java Documentation](http://docs.oracle.com/javase/6/docs/api/java/util/ArrayList.html)
    - [Simple Particle System](http://processing.org/learning/topics/simpleparticlesystem.html)
- Java
    - [Robot Class example](https://github.com/ITPNYU/ICM/blob/master/in-class-examples/week11/RobotExample/RobotExample.pde), [Robot Java Documentation](http://docs.oracle.com/javase/6/docs/api/java/awt/Robot.html)
    - [Try/Catch, Exceptions](http://wiki.processing.org/w/Exceptions)
    - [Processing in Eclipse](http://processing.org/learning/eclipse/)
    - [Processing in Sublime](https://github.com/b-g/processing-sublime)
    - Processing.js embedded in webpage
        - [Simple Example](https://github.com/ITPNYU/ICM/tree/master/extras/manualprocessingjs)
        - [Processing.js Guide](http://processingjs.org/articles/PomaxGuide.html)

- Homework: Prepare a final project proposal.  Create a web page or blog post with title, description, sample imagery, diagrams, Processing code, etc.  Be prepared to present your proposal to the class next week.

Week 10 --  Propose Final Projects
-----------------------------
- ** See your individual section's proposal schedule on your wiki **

Week 11 -- One on one speed user testing / feedback
-----------------------------
- This week you will "user test" your project with fellow classmates. You must have some implementation that you can test completed by this time.  User testing can mean different things for different projects. For a game, it can mean that the user tries to play it. For an art piece, it could mean showing it to a classmate and asking for them to say what they think it is about or how it made them feel. We'll show projects in a "one on one" / round robin / speed dating-style session. 5 minutes then switch. You cannot not explain your project, just show and let the user try it and give you feedback. Then you can answer questions.  User testing schedule will be provided on a wiki.

Week 12 -- Final Project Presentations
-----------------------------
- Please add your link to your final project documentation on your section's wiki.
