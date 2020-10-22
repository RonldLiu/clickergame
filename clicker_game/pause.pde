void pause() {
  fill(255);
  noStroke();
  rect(0, 0, 110, 110);
  //continue button
  if (mouseX > 10 && mouseX <100 && mouseY > 10 && mouseY<100) { //if hoving on button change appearance
    fill(255, 0, 0);
    strokeWeight(10);
    triangle(90, 55, 20, 20, 20, 90);
    noFill();
    stroke(255, 0, 0);
    rect(10, 10, 90, 90);
  } else {
    fill(0);
    strokeWeight(1);
    triangle(90, 55, 20, 20, 20, 90);
    noFill();
    stroke(0);
    rect(10, 10, 90, 90);
  }
  shadowText("PAUSE", 400, 400, 100); //big pause text in the center
} 
void pauseClicks() {
  if (mouseX > 10 && mouseX <100 && mouseY > 10 && mouseY<100) { //if clicked on button continue game
    mode = GAME;
  }
}
