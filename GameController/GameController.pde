ArrayList<Sprite> sprites = new ArrayList<Sprite>();
ArrayList<Sprite> enemies = new ArrayList<Sprite>();
ShapeFactory factory;
HostileSprite player;
final int screenWidth = 800;
final int screenHeight = 600;
final int playersTeam = 1;
final int enemiesTeam = 2;
int playerSpeedLimit = 8;

void setup() {
  size(screenWidth, screenHeight, P2D);
  factory = new ShapeFactory();
  player = spawnPlayer();
  sprites.add(player);
  noCursor();
}

void draw() {
  background(#00041C);
  
  for(int i = 0; i < sprites.size(); i++) {
    sprites.get(i).updateAndDisplay();
}

HostileSprite spawnPlayer() {
 PVector startingPosition = new PVector(0.5 * width, 0.85 * height);
 PVector initialVelocity = new PVector(0,0);
 PShape graphic = factory.getBasicPLayer();
 int radius = 40;
 return new HostileSPrite(playersTeam, radius, graphic, startingPosition, initialVelocity);
}
