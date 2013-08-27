Introduction to Computational Media Syllabus
============================================

**Note this section is for students with prior programming experience and has its own syllabus separate from all other sections**

- [General ICM Page](https://github.com/ITPNYU/ICM-2013): includes links to helpful resources, work from other sections, and instructions on how to upload your homework.
- [Main Processing page](http://processing.org/)
- [book: www.learningprocessing.com](http://www.learningprocessing.com)
- [Other Processing books available](http://processing.org/learning/books/)
- [Processing site tutorials](http://www.processing.org/learning/)

Section Pages and Homework Wikis
--------------------------------
- Shiffman, Tuesday, 12:05-3:00pm:  [Section Info](https://github.com/ITPNYU/ICM-2013/blob/master/sections/Shiffman-Tues-2013.md), [Section Homework](https://github.com/ITPNYU/ICM-2013/wiki/Homework-Shiffman-Tuesday)

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
    -[rect() and rectMode() demo](http://itp.nyu.edu/~ck987/rectDemo/)
    -[ellipse() and ellipseMode() demo](http://itp.nyu.edu/~ck987/ellipseDemo/)
    -[fill() greyscale and color demo](http://itp.nyu.edu/~ck987/colorDemo/)
- [Processing reference](http://processing.org/reference)
- Running your application
- Exporting: application, android, javascript
- [Abstract Modern Art](http://www.abstractmodernart.com/) for inspiration
    -[Piet Mondrian](http://images.google.com/images?q=mondrian)
    -[Ron Gang](http://www.iarc.org/~4x1mk/nonfig1.htm)
    -[Sol Lewitt](http://www.ericdoeringer.com/ConArtRec/LeWitt/LeWitt.html)
- Watch
    - Casey Reas [Eyeo 2012 talk](https://vimeo.com/45851523) on Chance Operations
    - [Video Lessons](http://icm.shiffman.net/) 0.0-2.1 duplicate what we will cover in class.  Watch 3.0-4.3 to preview next week's content.
- Related Reading
    - Chapters 1-2 from [Learning Processing](http://www.learningprocessing.com).
    - Chapters 1-3 from [Getting Started with Processing](http://my.safaribooksonline.com/9781449379827?portal=oreilly&cid=orm-cat-readnow-9781449379827)
- Downloading Processing
    - Download [Processing 2.0](http://www.processing.org/download/) 
- Homework
    - Sign up for the ITP ICM Google Group: https://groups.google.com/a/itp.nyu.edu/group/icm (also sign up for your section's group)
    - Create your own screen drawing: self-portrait, alien, monster, etc. Use only 2D primitive shapes – arc(), curve(), ellipse(), line(), point(), quad(), rect(), triangle() – and basic color functions – background(), colorMode(), fill(), noFill(), noStroke(), stroke().  Remember to use size() to specify the dimensions of your window.
    - Post a link to your work on your section's wiki (see links above).  Follow the guidelines provided on the wiki.
    - Examples: https://github.com/shiffman/LearningProcessing -- take a look at Chapter 1 and 2 (3 if you are feeling ambitious).

Week 2 -- Animation && Interaction
----------------------------------
- The flow: code blocks, setup, draw, and events: http://www.learningprocessing.com/examples/chapter-3/
- Variation: mouseX,mouseY
- Variables: Declare, Initialize, Use: http://www.learningprocessing.com/examples/chapter-4/
- Random
- Transformations
- Conditionals: http://www.learningprocessing.com/examples/chapter-5/
    - If, else if, else
    - Boolean variables
    - Relational Operators, Logical Operators
    - Buttons, rollovers, switches
- Loops: http://www.learningprocessing.com/examples/chapter-6/
    - while
    - for
- Modulo
- Examples from Chris Kairalla
    - [more complicated mouse draw](http://itp.nyu.edu/~ck987/week2/mouseDraw/)
    - [bouncing ball demo](http://itp.nyu.edu/~ck987/icm2011/week2/ballbounce/)
    - [conditional expression demo](http://itp.nyu.edu/~ck987/week2/quadRoll/)
    - [rectangle rollover demo](http://itp.nyu.edu/~ck987/week3/in_rect_demo/)
    - [Modulo demo](http://itp.nyu.edu/~ck987/week3/moduloDemo/)
- Related Reading
    - Chapters 3-6 from Learning Processing.
    - Chapters 4-5 from [Getting Started with Processing](http://my.safaribooksonline.com/9781449379827?portal=oreilly&cid=orm-cat-readnow-9781449379827)
- Supplemental Reading
    - ["Hackers and Painters"](http://www.paulgraham.com/hp.html) by Paul Graham
- Homework
    - TBA. Start by working in pairs (according to your section's wiki).  We will allocate some time in class for this.  You can post together or break off and complete the assignment individually.  

Week 3 -- Functions & Objects: Part 1
-----------------------------
- The Theory of Object Oriented Programming
- Functions: http://www.learningprocessing.com/examples/chapter-7/
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
- Related Reading
    - Chapters 7-8 from Learning Processing.
    - Chapters 8-9 from [Getting Started with Processing](http://my.safaribooksonline.com/9781449379827?portal=oreilly&cid=orm-cat-readnow-9781449379827)
- Homework
    - Re-organize the code of a previous assignment or example using functions and objects.  If you are inspired by the power of modularity, feel free to elaborate on the assignment.  Work individually or in pairs (no pairs will be assigned this week.)

Week 4 -- Functions & Objects Part 2
------------------------------------
- Objects: http://www.learningprocessing.com/examples/chapter-8/
    - Principles and Theory (Encapsulation)
    - How-to
    - The Constructor!
    - Objects talking to objects
- Related Reading
    - Chapters 7-8 from Learning Processing.
    - Chapters 8-9 from [Getting Started with Processing](http://my.safaribooksonline.com/9781449379827?portal=oreilly&cid=orm-cat-readnow-9781449379827)
- Homework
    - Design a sketch in an object-oriented fashion.  Try to eliminate all code from the main tab (setup() and draw()) except for the core requirements (size(), background(), etc.) and calls to objects.
        - For example: Consider building a [particle system](http://en.wikipedia.org/wiki/Particle_system).  A particle system can be used to simulate: rain, snow, fireworks, explosions, smoke, etc.  For this week, you would create a Particle class to describe a single particle and try to get two particles on the screen using separate variables. (Then next week, after we learn arrays, you would visualize hundreds (or thousands) of particles on the screen.)

Week 5 -- Repetition and Reproduction
-----------------------------
- Review loops: http://www.learningprocessing.com/examples/chapter-6/
- Arrays: http://www.learningprocessing.com/examples/chapter-9/
- A String is like an array of characters: http://processing.org/learning/text/
- An image is like an array of pixels: http://processing.org/learning/pixels/
- What is an ArrayList?
- Related Reading
    - Chapters 6 and 9, from Learning Processing.
    - Chapter 10 from [Getting Started with Processing](http://my.safaribooksonline.com/9781449379827?portal=oreilly&cid=orm-cat-readnow-9781449379827)
- Homework
    - Using arrays and loops, write a program that creates multiple instances of an object (feel free to use an object you developed previously or create something new). You can consider continuing the "particle system" thread and try modeling something like rain, snow, bubbles, etc. You can also look ahead to images and data and think about how an image is an "array of pixels" an a String is an "array of characters."

Week 6 -- Vectors and Simulation
--------------------------------
  - [PVector tutorial](http://processing.org/tutorials/pvector/)
  - [The Nature of Code](http://natureofcode.com/book/)
  - [The Nature of Code Exampes](https://github.com/shiffman/The-Nature-of-Code-Examples)
  - Homework: TBA

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
    - In class: https://github.com/ITPNYU/ICM/tree/master/in-class-examples/week7
    - Updated chapter 15: https://github.com/ITPNYU/ICM/tree/master/LearningProcessing/chp15
    - Updated chapter 16: https://github.com/ITPNYU/ICM/tree/master/LearningProcessing/chp16
    - Dano's examples: https://github.com/ITPNYU/Comperas
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
