void setup(){
  size(400,400);
}
int i;
void draw(){
  background(0);
  fill(0,0,255);
  ellipse(i++,50,80,80);
  if(i>width) i=0;
}
