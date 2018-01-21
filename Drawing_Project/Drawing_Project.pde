import processing.sound.*;
int totalEffects = 3;
SoundFile[] effect = new SoundFile[totalEffects];
int indexEffect = 0;
PFont seg; 
PImage[] pic = new PImage[4]; //Array is 4
int colors = 8;
color red = #FC0808 , white = #FFFFFF, pink = #FA8D8D, 
blue = #2400FA, black = #050505, green =  #0BFF00,
yellow = #FFEA00, gray = #A0A0A0;
//Colors for Quit button
color boarder = red, inside = white;

/*

Drawing Project
by: Lewis Tran

Comp Sci final project 2017-2018
A project that is use for drawing purposes

*/

void setup(){ //shows the music/shapes/font sizes
//fullScreen();
size(800,600);

println("start of console");
seg = createFont("ArialMT-48", 50);

//SOUNDFILE
SoundFile Coin; // Song #0
SoundFile Death; // Song #1
SoundFile Mushroom; // Song #2

//Sound Effect
effect[0] = new SoundFile(this, "COIN.mp3");
effect[1] = new SoundFile(this, "Death.mp3");
effect[2] = new SoundFile(this, "mushroom.mp3");

//LAYOUT OF DRAWING PROJECT
rect(0, 450, 800, 150); // the controls
rect(620,0,180,450); // images section
rect(620,450,180,150); // quit section
rect(0,450,100,150); // erase section
rect(0,0,620,50); //caption
rect(0,50,620,400); // picture insert

//CONTROLS OF THE DRAWING PROJECT
rect(665,65,100,60); //image 1
rect(665,325,100,60); //image 2
rect(665,197,100,60); //Blank page
rect(665,500,100,60); //Off button
rect(20,500,60,60); // erase button
ellipse(150, 530, 30, 30); //red
ellipse(250, 530, 30, 30); //blue
ellipse(350, 530, 30, 30); //green
ellipse(450, 530, 30, 30); //yellow
ellipse(550, 530, 30, 30); //black

}

void draw(){// shows the colors filled/text applied/quit button filled for each function
  
//BUTTON COLORS
fill(gray); 
rect(0, 450, 800, 150); // the controls
rect(620,0,180,450); // images section
rect(620,450,180,150); // quit section
rect(0,450,100,150); // erase section
rect(0,0,620,50); //caption
rect(665,197,100,60); //Blank page
rect(665,65,100,60); //image 1


fill(pink); 
rect(20,500,60,60); // pink

fill(red);
ellipse(150, 530, 30, 30); //red
  
fill(blue);
ellipse(250, 530, 30, 30); //blue
  
fill(green);
ellipse(350, 530, 30, 30); //green
  
fill(yellow);
ellipse(450, 530, 30, 30); //yellow
  
fill(black);
ellipse(550, 530, 30, 30); //black

//TEXT
  
//TITLE
   String title = " Welcome to the Drawing App! "; //  String must be long enough to fill
   PFont titleFont;
   titleFont = createFont ("ArialMT-48", 50); 
   fill(gray); //fills the color on the title.
   rect(0,0,620,50); //caption
   textFont(titleFont, 10); // Type of font, size needed 
   textAlign (CENTER);

   textSize (50); //Needed for textWidth Calc
   float textLength = 600; // Needed for Variable inside
   for (float i=1; textWidth(title) > 620; i = i - 0.01) {
   textLength = textLength*i;
   textSize (textLength);
   println("For" + textLength);
}    //Resizing the Algorithm 

   textSize (textLength);
   fill (0); //Black 
   text(title,0,0,620,50); 
   fill(255); //Normal

//IMAGE 1
   String firstCopy = " Image #1"; //needs enough strings to fill it in
   PFont firstCopytitleFont;
   titleFont = createFont("ArialMT-48", 80);
   fill(gray); //fills the shape for the button
   rect(665,65,100,60); //title for image 1
   textAlign(CENTER);

   textFont(titleFont, 1000);
   textSize(60);
   float firstCopytextLength =100;
   for(float i = 1; textWidth(firstCopy)> 100; i= i-0.01) {
   textLength = textLength*i;
   textSize(textLength);
}

   textSize(textLength);
   fill(0); //Black 
   text(firstCopy,665,65,100,60);
   fill(255); //Normal 

//IMAGE 2
   String secondCopy = "Blank #2"; //needs enough strings to fill it in
   PFont secondCopytitleFont;
   titleFont = createFont("ArialMT-48", 80);
   fill(gray); //fills the shape for the button
   rect(665,197,100,60); //title for blank 2

   textAlign(CENTER);
   textFont(titleFont, 1000);
   textSize(60);
   float secondCopytextLength =100;
   for(float i = 1; textWidth(secondCopy)> 100; i= i-0.01) {
   textLength = textLength*i;
   textSize(textLength);
}

   textSize(textLength);
   fill(0); //Black 
   text(secondCopy,665,197,100,60);
   fill(255); //Normal 

//IMAGE 3
   String thirdCopy = " Image #3"; //needs enough strings to fill it in
   PFont thirdCopytitleFont;
   titleFont = createFont("ArialMT-48", 80);
   fill(gray); //fills the shape of the button
   rect(665,325,100,60); // title for image 3

   textAlign(CENTER);
   textFont(titleFont, 1000);
   textSize(60);
   float thirdCopytextLength =100;
   for(float i = 1; textWidth(secondCopy)> 100; i= i-0.01) {
   textLength = textLength*i;
   textSize(textLength);
}
   textSize(textLength);
   fill(0); //Black 
   text(thirdCopy,665,325,100,60);
   fill(255); //Normal 
   
//OFF BUTTON
fill(boarder);
rect(665,500,100,60); //Off button

if (mouseX > 665 && mouseX < 790 && mouseY > 500 && mouseY < 565) { // off Button 
 // End of IF for the HE effect
boarder = #FC0808;
inside = #FFFFFF;
 
} else {
boarder = #FFFFFF;
inside = #FC0808;

pic[3] = loadImage("off.png"); //269 x 269
image(pic[3],665,500,100,60);
  }
}