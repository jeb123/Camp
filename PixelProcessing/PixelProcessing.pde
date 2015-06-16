PImage img;
PFont font;
void setup() {
  img = loadImage("therock.png");
  size(img.width, img.height);
  font = loadFont("Chiller-Regular-48.vlw");
  textFont(font, 100);
  textAlign(RIGHT);
  fill(0);
  
}

void draw() {
  background(255);
  image(img, 0, 0);
  text("ROCK", width/2, height-100);
}

void keyPressed() {
  if(key == 'p') {
    saveFrame("data/" + System.currentTimeMillis() + ".png");
  }
}
