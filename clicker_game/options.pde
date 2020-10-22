void options() {
  background(255);
  strokeWeight(1);
  stroke(0);
  //ok button
  if (mouseX > 100 && mouseX < 700 && mouseY > 640 && mouseY< 770) { //if hoving on button change appearance
    fill(100);
    rect(100, 640, 600, 130);
    fill(255);
    shadowText("CONFIRM", 400, 700, 100);
  } else {
    fill(255);
    rect(100, 640, 600, 130);
    fill(0);
    shadowText("CONFIRM", 400, 700, 100);
  }
  //first
  if (mouseX > 100 && mouseX < 230 && mouseY > 490 && mouseY< 620) { //if hoving on button change appearance
    strokeWeight(10);
    fill(255);
    rect(100, 490, 130, 130);
    image(face_lol, 101, 491, 128, 128);
  } else {
    strokeWeight(1);
    fill(255);
    rect(100, 490, 130, 130);
    image(face_lol, 101, 491, 128, 128);
  }
  //second
  if (mouseX > 335 && mouseX < 465 && mouseY > 490 && mouseY< 620) { //if hoving on button change appearance
    strokeWeight(10);
    fill(255);
    rect(335, 490, 130, 130);
    image(face_megusta, 336, 491, 128, 128);
  } else {
    strokeWeight(1);
    fill(255);
    rect(335, 490, 130, 130);
    image(face_megusta, 336, 491, 128, 128);
  }
  //third image
  if (mouseX > 570 && mouseX < 700 && mouseY > 490 && mouseY< 620) { //if hoving on button change appearance
    strokeWeight(10);
    fill(255);
    rect(570, 490, 130, 130);
    image(pepe, 571, 491, 128, 128);
  } else {
    strokeWeight(1);
    fill(255);
    rect(570, 490, 130, 130);
    image(pepe, 571, 491, 128, 128);
  }
  //indicator
  size = map(sliderX, 200, 600, 100, 300);
  imageMode(CENTER);
  image(face_selected, 400, 200, size*0.9, size*0.9); //display the indicator
  noFill();
  strokeWeight(5);
  circle(400, 200, size); //circle outline
  imageMode(CORNER);
  //slider
  if (mouseX>200 && mouseX<600 && mouseY > 390 && mouseY < 410) { //if hoving on button change appearance
    stroke(180);
    strokeWeight(5);
    circle(sliderX, 400, 10);
    line(200, 400, 600, 400);
  } else {
    stroke(0);
    strokeWeight(5);
    circle(sliderX, 400, 10);
    line(200, 400, 600, 400);
  }
  shadowText("OPTIONS", 170, 50, 75); //top left options text
}
void optionsClicks() {
  //ok click
  if (mouseX > 100 && mouseX < 700 && mouseY > 640 && mouseY< 770) {
    mode = INTRO;
  }
  //first click - face_lol
  if (mouseX > 100 && mouseX < 230 && mouseY > 490 && mouseY< 620) {
    face_selected= face_lol;
  }
  //second click - face_megusta
  if (mouseX > 335 && mouseX < 465 && mouseY > 490 && mouseY< 620) {
    face_selected=face_megusta;
  } 
  //third click - pepe;
  if (mouseX > 570 && mouseX < 700 && mouseY > 490 && mouseY< 620) {
    face_selected=pepe;
  }
  //slider
  if (mouseX>200 && mouseX<600 && mouseY > 390 && mouseY < 410) {
    sliderX = mouseX; //update sliderx when clicked
  }
}
