import javax.swing.JFrame;
//int[][] p;
int Color=255;
int range=30;

void setup() {
  size(1000, 700);
  //p = new int[width*10][2];
  noStroke();
  fill(0);
  rect(0, 0, 1000, 700);
  fill(255);
}

void draw() {
}

void mouseDragged() {
  if (mouseX<width&&mouseY<height&&mouseX>0&&mouseY>0) {
    ellipse(mouseX, mouseY, range, range);
  }
}
