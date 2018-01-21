void images(){//shows only the image thumbnail and sizes details

// thumbnail #0 592 x 733
  pic[0]= loadImage("kirby.gif"); 
image(pic[0],0,50,620,400);
//thumbnail #1 600 x 800
  pic[1]= loadImage("Ghost.png");
image(pic[1],0,50,620,400); 
  //thumbnail #2 1275 x 1650
  pic[2] = loadImage("blankcanvas.jpg");
image(pic[2],0,50,620,400);
 //thumbnail #3 269 x 269
  pic[3] = loadImage("off.png"); 
image(pic[3],665,500,100,60);
}

void mousePressed(){ // shows the mouse buttons for each functions
  
////IMAGE/QUIT BUTTON FUNCTIONS////
  
// off button
    if (mouseX > 665 && mouseX < 790 && mouseY > 500 && mouseY < 565) { // off Button
    exit();
 }  // Off button will leave the drawing app
 
//image 1
    if (mouseX > 665 && mouseX < 770 && mouseY > 320 && mouseY < 380) { //image 1
    pic[0]= loadImage("kirby.gif"); 
    image(pic[0],0,50,620,400);
    println("Playing Song Effect #3 " + effect + ".");
    effect[2].play(); //will play effect 3
  } // button will select image 1
  
//image 2
    if (mouseX > 665 && mouseX < 770 && mouseY > 60 && mouseY < 120) { //image 2
    pic[1]= loadImage("Ghost.png");
    image(pic[1],0,50,620,400);
    println("Playing Song Effect #2 " + effect + ".");
    effect[1].play(); // will play effect 2
    
 } // button will select image 2
 
//Blank Image 3
   if (mouseX > 665 && mouseX < 770 && mouseY > 200 && mouseY < 260) { //image 3
   pic[2] = loadImage("blankcanvas.jpg");
   image(pic[2],0,50,620,400);
   println("Playing Song Effect #1 " + effect + ".");
    effect[0].play(); //will play effect 1
    
   } //button will select image 3
 
 
////DRAWING FUNCTIONS////

//erase button
   if (mouseX > 20 && mouseX < 80 && mouseY > 490 && mouseY < 560) { //erase button
    stroke(white);
   
   } // button will select erase and erase drawing
  
//color 1
   if (mouseX > 130 && mouseX < 155 && mouseY > 510 && mouseY < 550) { // color 1
   stroke(red);
   
  } // button will select color 1
  
//color 2
  if (mouseX > 240 && mouseX < 265 && mouseY > 510 && mouseY < 550) { // color 2
  stroke(blue);
  
  } // button will select color 2
  
//color 3
  if (mouseX > 320 && mouseX < 365 && mouseY > 510 && mouseY < 550) { // color 3
  stroke(green);
  
  } // button will select color 3
  
//color 4
  if(mouseX > 430 && mouseX < 455 && mouseY > 510 && mouseY < 550) { // color 4
   stroke(yellow);
   
  } // button will select color 4
  
//color 5
  if (mouseX > 540 && mouseX < 565 && mouseY > 510 && mouseY < 550) { // color 5
  stroke(black);
  
  } // button will select color 5
}

void mouseDragged(){ //when start, original color will be black
//line(8, 8, mouseX, mouseY);
strokeWeight(random (8,8)); //controls the length and width of the color draw
ellipse(mouseX,mouseY,8,8); //controls the size
strokeWeight(5);
}