PImage foreground;
PImage background;

void setup() {
  foreground = loadImage("guy.jpg");
  background = loadImage("space.png");
  GreenScreen gs = new GreenScreen(foreground, background);
  ImageTool.matchWidth(background, foreground);
  //ImageTool.matchHeight(foreground, background);
  gs.display();
}

void draw() {

} //required for keyPressed event to fire

void keyPressed() {
  if(key == 'p' || key == 'P') {
    saveFrame("data/" + System.currentTimeMillis() + ".jpg");
  }
}
