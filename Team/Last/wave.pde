/*import processing.net.*;
Server s;
Client c;
*/
PImage morning,night;

int cols, rows;
int scl = 20;
int w=2000;
int h=1000;
float[][] terrain;
void setup() {
  size(800, 600, P3D);
  cols=w/scl;
  rows=h/scl;
  terrain = new float[cols][rows];
  morning = loadImage("morning4.jpg");
  night = loadImage("night.jpg");
}
float flying;
float wind[][]={{0.003,0.03},{0.005,0.05},{0.007,0.07}};
void draw() {
  flying -= wind[2][0];//0.003,0.005,0.007 //wind
  float yoff=flying;
  for (int y=0; y<rows; y++) {
    float xoff=0;
    for (int x=0; x<cols; x++) {
      terrain[x][y]=map(noise(xoff, yoff), 0, 1, -100, 100);
      xoff +=wind[0][1];//0.03,0.05,0.07 //wind
    }
    yoff +=0.1;
  }
  background(0);
  image(morning,0,0,w/2,h/2);
  stroke(255);
  strokeWeight(5);
  
  noStroke();
  noFill();
  translate(width/2, height/2);
  rotateX(PI/3);
  translate(-w/2, -h/2);

  for (int y=0; y<rows-1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x=0; x<cols; x++) {
      //fill(0,0, 100+terrain[x][y]);//night
      fill(0,10+terrain[x][y], 170+terrain[x][y]);//morning
      vertex(x*scl, y*scl, terrain[x][y]);
      vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
    }
    endShape();
  }
}
