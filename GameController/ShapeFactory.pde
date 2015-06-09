class ShapeFactory {
  PShape basicBullet;
  PShape basicPlayer;
  PShape basicEnemy;

  ShapeFactory() {
    buildBasicBullet();
    buildBasicEnemy();
    buildBasicPlayer();
  }
  
  PShape getBasicBullet() {
    return basicBullet;
  }

  PShape getBasicPlayer() {
    return basicPlayer;
  }

  PShape getBasicEnemy() {
    return basicEnemy;
  }
  
  void buildBasicBullet() {
    PShape bullet = createShape(ELLIPSE, -5, -7.5, 10, 15);
  }
  
  void buildBasicPlayer() {
    basicPlayer = createShape(GROUP);
    PShape chassis = createShape();
    chassis.beginShape();
    chassis.fill(#C96416);
    chassis.vertex(0, -40);
    chassis.vertex(25, 40);
    chassis.vertex(15, 40);
    chassis.vertex(15, 50);
    chassis.vertex(-15, 50);
    chassis.vertex(-15, 40);
    chassis.vertex(-25, 40);
    chassis.vertex(0, -40);
    chassis.endShape();
    PShape cockpit = createShape(ELLIPSE, -10, -15, 20, 30);
    basicPlayer.addChild(chassis);
    basicPlayer.addChild(cockpit);
  }
  
  void buildBasicEnemy() {
    basicEnemy = createShape(GROUP);
    PShape chassis = createShape();
    chassis.beginShape();
    chassis.fill(#14FF00);
    chassis.vertex(-30, -15);
    chassis.vertex(30, -15);
    chassis.vertex(40, 20);
    chassis.vertex(-40, 20);
    chassis.vertex(-30, -15);
    chassis.endShape();
    PShape cockpit = createShape(ELLIPSE, -10, -15, 20, 30);
    basicEnemy.addChild(chassis);
    basicEnemy.addChild(cockpit);
  }
}

