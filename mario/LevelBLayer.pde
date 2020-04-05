/**
 * Our main level layer has a background
 * color, and nothing else.
 */
class LevelBLayer extends MarioLayer {

  float groundLevel = height - 48;
 
  LevelBLayer(Level owner) {
    super(owner);
    //setBackgroundColor(color(0,130,255));
    addBackgroundSprite(new TilingSprite(new Sprite("graphics/backgrounds/nightsky.gif"),0,0,width,height));

    addLava(-32, height-15, width, height); 

    addGroundPlatforms();

    addGrounds();

    addTubes();

    addSkyBlocks();

    addCoins();

    addCoinBlocks();

    // we don't want mario to walk off the level,
    // so let's add some side walls
    addBoundary(new Boundary(-1,0, -1,height));
    
    addBoundary(new Boundary(width+1,height, width+1,0));

//    addGround("ground", -32,height-48, width + 32,height);

    addGround("ground", -32, height-48, 550, height); 

    // add general ground, with a muncher pit
    // float gap = 58;
    // addGround("ground", -32,height-48, -32 + gap*32,height);
    // addBoundary(new Boundary(-32 + gap*32,height-47,-32 + gap*32,height));
    // for(int i=0; i<4; i++) { addBoundedInteractor(new Muncher(-32 + (gap*32) + 8 + (16*i),height-8)); }
    // gap += 2;
    // addBoundary(new Boundary(-31 + gap*32,height,-31 + gap*32,height-47)); 
    // addGround("ground", -31 + gap*32,height-48, width+32,height);

    // key!
    addGoal(width - 50, groundLevel-210);
  }

  void addGrounds() {

    // First island
    addGround("ground", -32, groundLevel, 760, height);

    // Second island
    addGround("ground", 860, groundLevel, width, height);

  }

  void addGroundPlatforms() {

    // Start of first island

    addGroundPlatform("ground", 100, groundLevel-90, 125, 90);

    addGroundPlatform("ground", 150, groundLevel-30, 100, 30);

    addGroundPlatform("ground", 300, groundLevel-60, 50, 60);

    addSlant(400, groundLevel);

    addGroundPlatform("ground", 685, groundLevel-96, 84, 96);

    addGroundPlatform("ground", 650, groundLevel-48, 75, 48);

    // End of first island

    // Start of second island

    addGroundPlatform("ground", 950, groundLevel-90, 100, 90);

    addGroundPlatform("ground", 900, groundLevel-60, 75, 60);

    addGroundPlatform("ground", 950, groundLevel-30, 50, 30);

    addSlant(1250, groundLevel);

    addGroundPlatform("ground", 1598, groundLevel-120, 100, 120);

    addGroundPlatform("ground", 1425, groundLevel-90, 50, 90);

    addGroundPlatform("ground", 1500, groundLevel-60, 50, 60);

    addGroundPlatform("ground", 1575, groundLevel-30, 50, 30);

    addGroundPlatform("ground", 1898, groundLevel-30, 50, 30);

    addGroundPlatform("ground", 1798, groundLevel-60, 50, 60);

    addGroundPlatform("ground", 1698, groundLevel-90, 50, 90);

    addGroundPlatform("ground", 1748, groundLevel-150, 50, 150);

    addGroundPlatform("ground", 1848, groundLevel-180, 50, 180);

    addGroundPlatform("ground", 1948.0, groundLevel-210, 2013, 210);

    // End of second island

  }

  void addSkyBlocks() {

    for(int i=0; i<4; i++) {
        addBoundedInteractor(new SkyBlock(475+i*16,groundLevel-126));
    }

    for(int i=0; i<3; i++) {
        addBoundedInteractor(new SkyBlock(350+i*16,groundLevel-150));
    }

    for(int i=0; i<3; i++) {
        addBoundedInteractor(new SkyBlock(1340+i*16,groundLevel-125));
    }

  }

  void addTubes() {
    
  }

  void addCoins() {
    
    addCoins(100, groundLevel-115, 128);

    addForPlayerOnly(new DragonCoin(365, groundLevel-175));

  }

  void addCoinBlocks() {

    for (int i=0; i<6; i++) {
      addBoundedInteractor(new CoinBlock(1115+i*16, groundLevel-60));
    }

  }


}
