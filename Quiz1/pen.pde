void setup(){
  size(500,500);
  strokeWeight(16);
  stroke(0,255,0);
}
void draw(){
  if(mousePressed){
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
}
