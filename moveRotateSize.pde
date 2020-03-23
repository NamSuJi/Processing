void setup(){
  size(500,500);
  rectMode(CENTER);
}
float f;
void draw(){
  translate(mouseX,mouseY);
  scale(sin(f)+1);
  rotate(f);
  f = f + 0.001;
  fill(255,0,255);
  rect(0,0,80,80);
  fill(0,255,0);
  ellipse(0,0,80,80);
}
