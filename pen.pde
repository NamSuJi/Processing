void setup(){
  size(500,500);//창의 크기
  strokeWeight(16);//선의 굵기 
  stroke(0,0,255);//명암 값
}
void draw(){
  if(mousePressed){ // 마우스가 눌러진다면
    line(pmouseX,pmouseY,mouseX,mouseY);//시작점과 끝점(x1,y1,x2,y2)
    //pmouseX,pmouseY는 프레임 내의 이전 움직임에서 현재 움직임까지를 포함하고 있음
    //mouseX,mouseY는 현재 마우스의 x,y축 위치
  }
}
