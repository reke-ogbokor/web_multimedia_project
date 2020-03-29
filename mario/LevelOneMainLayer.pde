/**
 * Level One Layer
 */
class LevelOneMainLayer extends MarioLayer {

  LevelOneMainLayer(Level owner) {
    super(owner);
    addBackgroundSprite(new TilingSprite(new Sprite("graphics/backgrounds/yoshi-island2.png"), 0, 0, width, height));

    // we don't want mario to walk off the level,
    // so let's add some side walls
    addBoundary(new Boundary(-1, 0, -1, height));
    addBoundary(new Boundary(width+1, height, width+1, 0));

    // add general ground
    float gap = 58;
    addGround("ground", -32, height-48, -32 + width, height);
    addBoundary(new Boundary(-32 + gap*32, height-47, -32 + gap*32, height));
    gap += 2;
    addBoundary(new Boundary(-31 + gap*32, height, -31 + gap*32, height-47));

    addGroundPlatforms();
    addCoinBlocks();
   
    
    //addGoal(2060,height-100);


    // mystery coins
    //addForPlayerOnly(new DragonCoin(352, height-164));

    // Let's also add a koopa on one of the slides
    //Koopa koopa = new Koopa(264, height-178);
    //addInteractor(koopa);

    // add lots of just-in-time triggers
    //addTriggers();

    // add some tubes
    addTubes();

    // key!
    //addForPlayerOnly(new KeyPickup(2000, 364));
  }

  // In order to effect "just-in-time" sprite placement,
  // we set up some trigger regions.
  void addTriggers() {
    // initial hidden mushroom
    addTrigger(new MushroomTrigger(148, 370, 5, 12, 406, 373.9, 2, 0));
    // koopas
    addTrigger(new KoopaTrigger(412, 0, 5, height, 350, height-64, -0.2, 0));
    addTrigger(new KoopaTrigger(562, 0, 5, height, 350, height-64, -0.2, 0));
    addTrigger(new KoopaTrigger(916, 0, 5, height, 350, height-64, -0.2, 0));
    // when tripped, release a banzai bill!
    addTrigger(new BanzaiBillTrigger(1446, 310, 5, 74, 400, height-95, -6, 0));
  }
  
  void addGroundPlatforms() {
    // add some ground platforms    
    addGroundPlatform("ground", 305, height-95, 255, 34);
    
    addGroundPlatform("ground", 700, height-112, 120, 64);
    
    addGroundPlatform("ground", 1860, height-64, 98, 10);
    
    addGroundPlatform("ground", 1952, height-80, 65, 27);
    
    addGroundPlatform("ground", 2015, height-97, 50, 44);
    
    addGroundPlatform("ground", 2064, height-113, 224, 60);
  }

  // some tubes for transport
  void addTubes() {
    // tube transport
    //addTube(660, height-48, new LayerTeleportTrigger("background layer", 304+16, height/0.75-116));
    addTube(2705, height-48, null);
    addTube(2705+32, height-65, null);
  }
  
  void addCoinBlocks() {
    for (int i=0; i<3; i++) {
      if (i == 1) {
        continue;
      }
      addBoundedInteractor(new CoinBlock(616+i*16, height-105));
    }
    
    for (int i=0; i<2; i++) {
      addBoundedInteractor(new CoinBlock(855+i*16, height-88));
    }
  }
}
