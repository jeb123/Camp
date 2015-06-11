class ShapeFactory {
  PShape basicBullet;
  PShape basicPlayer;
  PShape basicEnemy;
  
  int basicBulletRadius;
  int basicEnemyRadius;
  int basicPlayerRadius;

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
  
  int getBasicBulletRadius() { return basicBulletRadius; }
  int getBasicEnemyRadius() { return basicEnemyRadius; }
  int getBasicPlayerRadius() { return basicPlayerRadius; }
  
  void buildBasicBullet() {
    basicBulletRadius = 20;
    basicBullet = createShape(ELLIPSE, -5, -7.5, 10, 15);
    basicBullet.setStroke(color(#FF0D00));
    basicBullet.setStrokeWeight(4);
    basicBullet.setFill(color(#FF9D3B));
  }
  
  void buildBasicPlayer() {
    basicPlayerRadius = 30;
    basicPlayer = createShape(GROUP);
    PShape chassis = createShape();
    chassis.setStroke(color(#769AAA));
    chassis.setStrokeWeight(2);
    chassis.beginShape();
    chassis.fill(255);
    chassis.vertex(0, -40);
    chassis.vertex(25, 40);
    chassis.vertex(15, 40);
    chassis.vertex(-15, 40);
    chassis.vertex(-25, 40);
    chassis.vertex(0, -40);
    chassis.endShape();
    PShape cockpit = createShape(ELLIPSE, -10, -15, 20, 30);
    cockpit.setStroke(color(#769AAA));
    cockpit.setStrokeWeight(4);
    cockpit.setFill(color(#0039FF));
    PShape box = createShape();
    box.setStroke(color(#FF6200));
    box.setStrokeWeight(2);
    box.beginShape();
    box.fill(#FF0000);
    box.vertex(15, 40);
    box.vertex(15, 50);
    box.vertex(-15,50);
    box.vertex(-15,40);
    box.endShape();
    basicPlayer.addChild(chassis);
    basicPlayer.addChild(cockpit);
    basicPlayer.addChild(box);
  }
  
  void buildBasicEnemy() {
    basicEnemyRadius = 40;
    basicEnemy = createShape(GROUP);
    PShape chassis = createShape();
    chassis.setStroke(color(#A0D2D3));
    chassis.setStrokeWeight(2);
    chassis.beginShape();
    chassis.fill(#176A12);
    chassis.vertex(-30, -15);
    chassis.vertex(30, -15);
    chassis.vertex(40, 20);
    chassis.vertex(-40, 20);
    chassis.vertex(-30, -15);
    chassis.endShape();
    PShape cockpit = createShape(ELLIPSE, -10, -15, 20, 30);
    cockpit.setStroke(color(#F2572C));
    cockpit.setStrokeWeight(4);
    cockpit.setFill(color(#00FF63));
    basicEnemy.addChild(chassis);
    basicEnemy.addChild(cockpit);
  }
}

