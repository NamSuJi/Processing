void setup(){
  size(400,400);//창의 크기
}
int i;//ellipse의 x 위치 이동을 위해 선언
void draw(){
  background(0);//검은색 지정
  fill(0,0,255);//원 파란색으로 채움
  ellipse(i++,50,80,80);//원 x,y,width,height
  if(i>width) i=0;//i의 수가 80보다 커지면 0으로 초기화 시킴
}
