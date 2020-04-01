/**
 * Our "empty" level is a single layer
 * level, doing absolutely nothing.
 */
class LevelOne extends MarioLevel {
  LevelOne(float levelWidth, float levelHeight) {
    super(levelWidth, levelHeight);

    // main level layer
    LevelLayer layer = new LevelOneMainLayer(this);
    addLevelLayer("Main Layer", layer);
    mario.setPosition(10, height-200);
    layer.addPlayer(mario);

    // And of course some background music!
    SoundManager.load(this, "audio/kr.mp3");
  }

  /**
   * If mario loses, we must end the level prematurely:
   */
  void end() {
    SoundManager.pause(this);
    super.end();
  }

  /**
   * But if he wins, we end the level properly:
   */
  void finish() {
    SoundManager.pause(this);
    super.finish();
  }
}
