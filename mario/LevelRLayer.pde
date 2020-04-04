/**
 * Level One Layer
 */
class LevelOneMainLayer extends MarioLayer {

  LevelOneMainLayer(Level owner) {
    super(owner);
    addBackgroundSprite(new TilingSprite(new Sprite("graphics/backgrounds/background.gif"), 0, 0, width, height));
    addBoundary(new Boundary(-1, 0, -1, height));
    addBoundary(new Boundary(width+1, height, width+1, 0));

    addLava( -32, height-15, width, height); 
    addGrounds();

    addGroundPlatforms();

    addSkyBlocks();

    addSlants();
    
    //addTriggers();

    // add some tubes
    addTubes();



    addGoal(3717, height - 250);

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
    // add some cave platforms    
    addGroundPlatform("ground", 305, height-96, 255, 34);

    addGroundPlatform("ground", 700, height-112, 120, 300);

    addGroundPlatform("ground", 1945, height-80, 65, 300);

    addGroundPlatform("ground", 2040, height-97, 50, 300);

    addGroundPlatform("ground", 2120, height-113, 224, 300);

    addGroundPlatform("ground", 3392, height-98, 50, 300);

    addGroundPlatform("ground", 3495, height-150, 50, 300);

    addGroundPlatform("ground", 3600, height-202, 50, 300);

    addGroundPlatform("ground", 3709, height-250, 50, 300);
  }

  // some tubes for transport
  void addTubes() {

    addTube(2850, height-48, new LevelTeleportTrigger("Level One Dark Level", 2020+6, height-65, 16, 1, 16, height-32));

    addUpsideDownTube(3392, 28);

    addTube(1802, height-115, null);
  }

  void addGrounds() {
    addGround("ground", -32, height-48, 550, height); 

    addGround("ground", 950, height-48, 1500, height);

    addGround("ground", 2442, height-48, 2719, height); 

    addGround("ground", 2850, height-48, 2870, height);
  }

  void addSkyBlocks() {

    for (int i=0; i<3; i++) {
      addBoundedInteractor(new SkyBlock(616+i*16, height-105));
    }

    for (int i=0; i<3; i++) {
      addBoundedInteractor(new SkyBlock(1530+i*16, height-90));
    }

    for (int i=0; i<3; i++) {
      addBoundedInteractor(new SkyBlock(1598+i*16, height-110));
    }

    for (int i=0; i<3; i++) {
      addBoundedInteractor(new SkyBlock(1666+i*16, height-130));
    }

    for (int i=0; i<3; i++) {
      addBoundedInteractor(new SkyBlock(1734+i*16, height-90));
    }

    for (int i=0; i<3; i++) {
      addBoundedInteractor(new SkyBlock(1802+i*16, height-110));
    }

    for (int i=0; i<3; i++) {
      addBoundedInteractor(new SkyBlock(2700+i*16, height-110));
    }

    for (int i=0; i<3; i++) {
      addBoundedInteractor(new SkyBlock(2768+i*16, height-130));
    }

    for (int i=0; i<35; i++) {
      addBoundedInteractor(new SkyBlock(width-29*16+i*16, 20));
    }
  }

  void addSlants() {
    addSlant(900, height-48);

    addSlant(2400, height-48);

    addSlant(2490, height-48);

    addSlant(2580, height-48);
  }
}
