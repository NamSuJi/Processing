float x,y,z;

void setup(){
  size(200,200,P3D);
  x = width/2;
  y = height/2;
  z = 0;
  rectMode(CENTER);
}
void draw(){
  translate(x,y,z);
  rect(0,0,100,100);
  z++;
}
