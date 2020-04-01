/**
 * Our main level layer has a background
 * color, and nothing else.
 */
class LevelThreeLayer extends MarioLayer {
 
  LevelThreeLayer(Level owner) {
    super(owner);
    //setBackgroundColor(color(0,130,255));
    addBackgroundSprite(new TilingSprite(new Sprite("graphics/backgrounds/sky.gif"),0,0,width,height));

    // we don't want mario to walk off the level,
    // so let's add some side walls
    addBoundary(new Boundary(-1,0, -1,height));
    addBoundary(new Boundary(width+1,height, width+1,0));

//    addGround("ground", -32,height-48, width + 32,height);

    // add general ground, with a muncher pit
    float gap = 58;
    addGround("ground", -32,height-48, -32 + gap*32,height);
    addBoundary(new Boundary(-32 + gap*32,height-47,-32 + gap*32,height));
    for(int i=0; i<4; i++) { addBoundedInteractor(new Muncher(-32 + (gap*32) + 8 + (16*i),height-8)); }
    gap += 2;
    addBoundary(new Boundary(-31 + gap*32,height,-31 + gap*32,height-47));
    addGround("ground", -31 + gap*32,height-48, width+32,height);

    // layer of skyblocks
    for(int i=0; i<24; i++) {
      addBoundedInteractor(new SkyBlock(width-23.5*16+i*16,96));
    }

    // key!
    addForPlayerOnly(new KeyPickup(2000,364));
  }
}