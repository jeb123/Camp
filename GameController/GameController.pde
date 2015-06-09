final int screenWidth = 800;
final int screenHeight = 600;
ShapeFactory factory;
PShape enemy;
PShape player;
PShape bullet;
int y = screenWidth;
int x = screenHeight;


void setup() {
  size(screenWidth, screenHeight, P2D);
  factory = new ShapeFactory();
  enemy = factory.getBasicEnemy();
  player = factory.getBasicPlayer();
  bullet = factory.getBasicBullet();
  noCursor();
}

void draw() {
  background(#00041C);
  shape(enemy, 100, 100);
  shape(player, 400, 550);
  shape(bullet, 350, 500);
}
