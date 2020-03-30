void setup(){
  size(500,500);
  strokeWeight(16);//선의 굵기 
  stroke(0,0,255);//명암 값
}
void draw(){
  if(mousePressed){{
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
}
