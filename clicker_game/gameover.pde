void gameover() {
  background(255, 0, 0);  
  shadowText("GAME OVER", 400, 300, 100); //text of gameover
  if (score > highscore) { //update highscore
    highscore = score;
  }
  shadowText("High Score: " + highscore, 400, 500, 80); //display highscore
  theme.pause(); 
  gameover.play(); //play gameover sound.
}
void gameoverClicks() { //click on anywhere, restart game
  reset(); 
  mode = INTRO; 
  gameover.pause(); //stop sound
  gameover.rewind(); //rewind sound
}
