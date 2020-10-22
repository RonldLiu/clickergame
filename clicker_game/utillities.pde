void shadowText(String text, float x, float y, int size) {
  textSize(size);
  fill(0);
  text(text, x-5, y+5);
  fill(200);
  text(text, x, y);
}
void reset() {
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
