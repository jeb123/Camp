final int screenWidth = 800;
final int screenHeight = 600;
final int playersTeam = 1;
final int enemiesTeam = 2;
int playerLives = 3;
int playerSpeedLimit = 8;
int enemySpeedLimit = 4;
int stage = 0;
boolean invincible = false;
boolean lockedControls = true;
boolean[] keys = new boolean[3];
ArrayList<Sprite> sprites = new ArrayList<Sprite>();
ArrayList<Sprite> enemies = new ArrayList<Sprite>();
ShapeFactory factory;
HostileSprite player;

void setup() {
  size(screenWidth, screenHeight, P2D);
  factory = new ShapeFactory();
  player = spawnPlayer();
  sprites.add(player);
  noCursor();
}

void draw() {
  background(#00041C);
  controlPlayer();
  for (int i = 0; i < sprites.size (); i++) {
    sprites.get(i).updateAndDisplay();
  }
}

HostileSprite spawnPlayer() {
  PVector startingPosition = new PVector(0.5 * width, 0.85 * height);
  PVector initialVelocity = new PVector(0, 0);
  PShape graphic = factory.getBasicPlayer();
  int radius = 40;
  return new HostileSprite(playersTeam, radius, graphic, startingPosition, initialVelocity);
}

void controlPlayer() {
  if (keys[0]) {
    player.position.x -= playerSpeedLimit;
  }
  if (keys[1]) {
    player.position.x += playerSpeedLimit;
  }
  if (keys[2]) {
    player.fire(new PVector(0, -10));
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT)
      keys[0] = true;
    if (keyCode == RIGHT)
      keys[1] = true;
  }
  if (key == 'f' || key == 'F')
    keys[2] = true;
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == LEFT)
      keys[0] = false;
    if (keyCode == RIGHT)
      keys[1] = false;
  }
  if (key == 'f' || key == 'F')
    keys [2] = false;
}

boolean isLeftBound(AbstractSprite sprite) {
  int leftBoundary = width - 2 * sprite.radius;
  if (sprite.position.x >= leftBoundary)
    return true;
  else
    return false;
}

boolean isRightBound(AbstractSprite sprite) {
  int rightBoundary = width - 2 * sprite.radius;
  if (sprite.position.x >= rightBoundary)
    return true;
  else
    return false;
}

