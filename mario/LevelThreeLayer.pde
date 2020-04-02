/**
 * Our main level layer has a background
 * color, and nothing else.
 */
class LevelThreeLayer extends MarioLayer {

  float groundLevel = height - 48;
 
  LevelThreeLayer(Level owner) {
    super(owner);
    //setBackgroundColor(color(0,130,255));
    addBackgroundSprite(new TilingSprite(new Sprite("graphics/backgrounds/nightsky.gif"),0,0,width,height));

    addLava(-32, height-15, width, height); 

    addGrounds();

    addGroundPlatforms();

    addSkyBlocks();

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
    addGoal(3717, height - 250);
  }

  void addGrounds() {

    // First island
    addGround("ground", -32, groundLevel, 760, height);

    // Second island
    addGround("ground", 860, groundLevel, 1360, height);

    // Third island
    addGround("ground", 1900, groundLevel, width, height);

  }

  void addGroundPlatforms() {

    // Start of first island

    addGroundPlatform("ground", 305, groundLevel-48, 75, 33);
    
    addGroundPlatform("ground", 610, groundLevel-48, 75, 33);

    addGroundPlatform("ground", 685, groundLevel-96, 84, 81);

    // End of first island

    // Start of second island

    addGroundPlatform("ground", 1220, groundLevel-48, 75, 33);

    addGroundPlatform("ground", 1295, groundLevel-96, 78, 81);

    // End of second island


  }

  void addSkyBlocks() {

      for(int i=0; i<6; i++) {
        addBoundedInteractor(new SkyBlock(1425+i*16,groundLevel-126));
    }

    for(int i=0; i<6; i++) {
        addBoundedInteractor(new SkyBlock(1575+i*16,groundLevel-146));
    }

      for(int i=0; i<8; i++) {
        addBoundedInteractor(new SkyBlock(1700+i*16,groundLevel-190));
    }
  }


}