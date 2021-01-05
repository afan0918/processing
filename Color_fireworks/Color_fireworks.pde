// Particles, by Daniel Shiffman.

ParticleSystem ps;
PImage sprite;  
int R=255,G=255,B=255;
boolean flag=false;
char[] ch={'R','G','B'};
int afan=0;

void setup() {
  size(1024, 768, P2D);
  orientation(LANDSCAPE);
  sprite = loadImage("sprite.png");
  ps = new ParticleSystem(10000);

  // Writing to the depth buffer is disabled to avoid rendering
  // artifacts due to the fact that the particles are semi-transparent
  // but not z-sorted.
  hint(DISABLE_DEPTH_MASK);
} 

void draw () {
  background(0);
  if(flag){
    switch(ch[afan]){
      case 'R':
        R++;
        break;
      case 'G':
        G++;
        break;
      case 'B':
        B++;
        break;
    }
    if(R>254||G>254||B>254){
      flag=false;
      afan++;
      afan%=3;
    }
  }else{
    switch(ch[afan]){
      case 'R':
        R--;
        break;
      case 'G':
        G--;
        break;
      case 'B':
        B--;
        break;
    }
    if(R<155||G<155||B<155){
      flag=true;
      afan++;
      afan%=3;
    }
  }
  ps.update();
  ps.display();
  ps.setEmitter(mouseX,mouseY);
  
  fill(255);
  textSize(16);
  text("Frame rate: " + int(frameRate), 10, 20);
}
