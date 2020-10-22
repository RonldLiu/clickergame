void shadowText(String text, float x, float y, int size) { //fancy text
  textSize(size);
  fill(0);
  text(text, x-5, y+5);
  fill(200);
  text(text, x, y);
}
void reset() { //resets game
  //target
  x = width/2;
  y = height/2;
  vx = random(-5, 5);
  vy = random(-5, 5);
  //game initialization
  score = 0;
  lives = 3;
  sliderX = 400;
  size = map(sliderX, 200, 600, 100, 300);
}
void mouseReleased() { //depending on which mode, calls the click functions
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  } else if (mode == OPTIONS) {
    optionsClicks();
  }
}
void mouseDragged() { //if dragged mouse in options
  if (mode == OPTIONS) {
    optionsClicks(); //update slider
  }
}
