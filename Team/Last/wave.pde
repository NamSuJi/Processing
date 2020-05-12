import processing.net.*;
Server s;
Client c;

PImage[] images = new PImage[2];

int cols, rows;
int scl = 20;
int w=2000;
int h=1000;
float[][] terrain;

void setup() {
  s = new Server(this,11111);
  
  size(800, 600, P3D);
  
  cols=w/scl;
  rows=h/scl;
  terrain = new float[cols][rows];
  images[0] = loadImage("morning4.jpg");
  images[1] = loadImage("night.jpg");
}

float flying;
float wind[][]={{0.003,0.03},{0.005,0.05},{0.007,0.07}};
int wave1 = 0;
int wave2 = 0;
int clock = 0;

void draw() {
  c = s.available();
  if(c!=null){
    String m = c.readString();
    m = m.substring(m.length()-1);
    if(m.equals("M")) clock=0;
    if(m.equals("N")) clock=1;
    if(m.equals("0")) wave1 = 0; 
    if(m.equals("1")) wave1 = 1;
    if(m.equals("2")){ wave1 = 2; wave2=1; }
  }
  flying -= wind[wave1][0];//0.003,0.005,0.007 //wind
  float yoff=flying;
  for (int y=0; y<rows; y++) {
    float xoff=0;
    for (int x=0; x<cols; x++) {
      terrain[x][y]=map(noise(xoff, yoff), 0, 1, -100, 100);
      xoff +=wind[wave1][wave2];//0.03,0.05,0.07 //wind
    }
    yoff +=0.1;
  }
  background(0);
  image(images[0],0,0,w/2,h/2);//background image
  
  noStroke();
  noFill();
  translate(width/2, height/2);
  rotateX(PI/3);
  translate(-w/2, -h/2);

  for (int y=0; y<rows-1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x=0; x<cols; x++) {
      if(clock==0) fill(0,100+terrain[x][y], 200+terrain[x][y]);//morning
      if(clock==1) fill(0,0, 100+terrain[x][y]);//night
      vertex(x*scl, y*scl, terrain[x][y]);
      vertex(x*scl, (y+1)*scl, terrain[x][y+1]);
    }
    endShape();
  }
}
