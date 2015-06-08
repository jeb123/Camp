final int screenWidth = 800;
final int screenHeight = 600;
ShapeFactory factory;
PShape enemy;
PShape player;
int y = screenWidth;
int x = screenHeight;


void setup() {
  size(screenWidth, screenHeight, P2D);
  factory = new ShapeFactory();
  enemy = factory.getBasicEnemy();
  player = factory.getBasicPlayer();
  noCursor();
}

void draw() {
  background(#00041C);
  shape(enemy, 100, 100);
  if (key == CODED) {
    if (keyPressed) {
    if (keyCode == LEFT) {
      x += -1;
    } else if (keyCode == RIGHT) {
      x += 1;
    } }
  } else {
    x = 0;
  }
  shape(player, 400, 550);
}
