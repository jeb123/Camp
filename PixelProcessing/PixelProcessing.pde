PImage img;
PFont font;
void setup() {
  img = loadImage("cat.png");
  size(img.width, img.height);
  font = loadFont("Chiller-Regular-48.vlw");
  textFont(font, 100);
  textAlign(CENTER);
  fill(0);
  
}

void draw() {
  background(255);
  image(img, 0, 0);
  text("CAT", width/2, height-75);
  float v = mouseY / (float)height;
  filter(INVERT);
  filter(THRESHOLD, v);
}

void keyPressed() {
  if(key == 'p') {
    saveFrame("data/" + System.currentTimeMillis() + ".png");
  }
}
