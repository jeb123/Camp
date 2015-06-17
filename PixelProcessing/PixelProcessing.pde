PImage img;
PFont font;

void setup() {
  img = loadImage("joker.png");
  background(0);
  size(img.width, img.height+50);
  font = loadFont("Chiller-Regular-48.vlw");
  textFont(font, 100);
  textAlign(CENTER);
}

void draw() {
  text("HAHAHAHAHA", width/2, height-5);
  fill(random(75),random(255),random(100));
  filter(INVERT);
  tint(random(75),random(225),random(100));
  image(img, 0, 0);
}

void keyPressed() {
  if (key == 'p' || key == 'P') {
    saveFrame("data/" + System.currentTimeMillis() + ".png");
  }
}

