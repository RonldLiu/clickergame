void game() {
  theme.play();
  background(255); 
  //target
  imageMode(CENTER);
  image(face_selected, x, y, size*0.9, size*0.9); //drawing the image in the center
  noFill();
  strokeWeight(5);
  stroke(0);
  circle(x, y, size); //drawing the circle/outline
  imageMode(CORNER);
  //text
  textSize(50);
  fill(0);
  text("Score: " + score, width/5, 750); // score
  text("Lives: " +  lives, width/5*4, 750); // lives
  //pause button
  if (mouseX > 10 && mouseX <100 && mouseY > 10 && mouseY<100) { // if hoving on button change appearance
    fill(255, 0, 0);  
    strokeWeight(10);
    text("ll", 55, 50);
    noFill();
    stroke(255, 0, 0);
    rect(10, 10, 90, 90);
  } else {
    fill(0);
    strokeWeight(1);
    text("ll", 55, 50);
    noFill();
    stroke(0);
    rect(10, 10, 90, 90);
  }
  //moving
  x = x + vx;
  y = y + vy;
  //bouncing
  if (x < size/2 || x > width-size/2) {
    vx = vx*-1;
  }
  if (y < size/2 || y > height-size/2) {
    vy = vy*-1;
  }
}
void gameClicks() {
  if (dist(mouseX, mouseY, x, y)<size/2) { //if clicked on target score and speed increases and play coin sound
    score = score+1;
    vx=vx*1.1;
    vy = vy * 1.1;
    coin.rewind();
    coin.play();
  } else {
    if (mouseX > 10 && mouseX <100 && mouseY > 10 && mouseY<100) { //if didn't click on target, two possible outcome: 1. clicked on pause, 2. clicked on nothing
      mode = PAUSE; //if clicked on pause, change mode to pause
    } else {
      lives = lives - 1; //if missed target, live decreases and play bump sound.
      bump.rewind();
      bump.play();
      if (lives == 0) mode = GAMEOVER;// when lives = 0, change mode to gameover
    }
  }
}
