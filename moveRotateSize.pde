void setup(){
  size(500,500);
  rectMode(CENTER);// 사각형을 중심점부터 그린다
}
float f;
void draw(){
  translate(mouseX,mouseY);//이동(x,y)
  scale(sin(f)+1);//확장
  rotate(f);//회전
  f = f + 0.001;
  fill(255,0,255); //색 채우기
  rect(0,0,80,80); //사각형
  fill(0,255,0); //색 채우기
  ellipse(0,0,80,80); //원
}
