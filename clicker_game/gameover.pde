void gameover() {
  background(255, 0, 0);
  shadowText("GAME OVER", 400, 300, 100);
  if (score > highscore) {
    highscore = score;
  }
  shadowText("High Score: " + highscore, 400, 500, 80);
  theme.pause();
  gameover.play();
}

void gameoverClicks() {
  reset();
  mode = INTRO; 
  theme.rewind(); 
}
