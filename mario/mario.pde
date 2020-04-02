/**
 * We must set the screen dimensions to something
 */
final int BLOCK = 16,
          screenWidth = 32*BLOCK,
          screenHeight = 27*BLOCK;

/**
 * Gravity consists of a uniform downforce,
 * and a gravitational acceleration
 */
float DOWN_FORCE = 2; 
float ACCELERATION = 1.3;
float DAMPENING = 0.75;


/**
 * initializing means building an "empty"
 * level, which we'll 
 */
void initialize() {
  SoundManager.mute(true);
  SoundManager.setDrawPosition(screenWidth-10, 10);
  frameRate(30);
  reset();
}

void reset() {
  clearScreens();
  addScreen("Bonus Level", new BonusLevel(width, height));
  addScreen("Dark Level", new DarkLevel(width, height));
  addScreen("Level One Dark Level", new LevelOneDarkLevel(width, height));
  addScreen("Level One", new LevelOne(7.5*width, height));
  addScreen("Level Two", new LevelTwo(4*width, height));
  addScreen("Level Three", new LevelThree(4*width, height));
  setActiveScreen("Level Three");
}
