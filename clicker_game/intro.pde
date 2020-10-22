void intro() {
  background(255);
  strokeWeight(1);
  fill(0);
  textSize(72);
  fill(0);
  shadowText("CLICKER GAME", 400, 200, 100);
  //start button
  if (mouseX > 100 && mouseX < 700 && mouseY > 340 && mouseY< 470) {//if hoving on button change appearance
    fill(100);
    rect(100, 340, 600, 130);
    fill(255);
    shadowText("START", 400, 400, 80);
  } else {
    strokeWeight(1);
    fill(255);
    rect(100, 340, 600, 130);
    fill(0);
    shadowText("START", 400, 400, 80);
  }
  //Opioins button
  if (mouseX > 100 && mouseX < 700 && mouseY > 540 && mouseY< 670) { //if hoving on button change appearance
    fill(100);
    rect(100, 540, 600, 130);
    fill(255);
    shadowText("OPTIONS", 400, 600, 80);
  } else {
    strokeWeight(1);
    fill(255);
    rect(100, 540, 600, 130);
    fill(0);
    shadowText("OPTIONS", 400, 600, 80);
  }
}

void introClicks() {
  if (mouseX > 100 && mouseX < 700 && mouseY > 340 && mouseY< 470) {//if clicked on start button, start game 
    mode = GAME;
    theme.rewind();
  }
  if (mouseX > 100 && mouseX < 700 && mouseY > 540 && mouseY< 670) { //if clicked on options button, open options
    mode = OPTIONS;
  }
}
