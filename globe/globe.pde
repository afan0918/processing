import peasy.PeasyCam;

PeasyCam cam;

PShape globe;
 
void setup() { 
  size(800, 800, P3D); 
  background(0); 
  PImage earth =loadImage("D:\\1.jpg");
  //by http://1.bp.blogspot.com/-UUXaK5GCj-k/UcsKJRMgkVI/AAAAAAAACfM/sePP_H08JTQ/s1600/1.jpg
  globe = createShape(SPHERE, 250); 
  globe.setStroke(false);
  globe.setTexture(earth);
  noStroke();
}
 
void draw() {
  background(0);
  translate(width/2, height/2);
  //rotateY(map(mouseX,0,width,-PI,PI));
  rotateY(radians(frameCount % 360));
  if (mouseButton == LEFT) {
    rotateX(map(mouseY,0,width,-PI,PI));
  }
  shape(globe);
}
