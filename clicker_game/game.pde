void game() {
  theme.play();
  gameover.pause();
  background(255); 
  //target
  imageMode(CENTER);
  image(face_selected, x, y, size*0.9, size*0.9);
  noFill();
  strokeWeight(5);
  stroke(0);
  circle(x, y, size);
  imageMode(CORNER);
  //text
  textSize(50);
  fill(0);
  text("Score: " + score, width/5, 750);
  text("Lives: " +  lives, width/5*4, 750);
  //pause
  if (mouseX > 10 && mouseX <100 && mouseY > 10 && mouseY<100) {
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
  if (dist(mouseX, mouseY, x, y)<size/2) {
    score = score+1;
    vx=vx*1.1;
    vy = vy * 1.1;
    coin.rewind();
    coin.play();
  } else {
    if (mouseX > 10 && mouseX <100 && mouseY > 10 && mouseY<100) {
      mode = PAUSE;
    } else {
      lives = lives - 1; 
      bump.rewind();
      bump.play();
      if (lives == 0) mode = GAMEOVER;
    }
  }
}
