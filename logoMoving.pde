void setup(){
  size(800,300);// 창의 크기
  textSize(128);// 문자열의 크기
}
int i,a=1;//움직이는 속도 조절을 위한 선언
void draw(){
  background(0,0,255);//배경은 파란색으로 지정
  if(keyPressed) a = key-'0';//키가 눌러지면 a는 눌러진 키의 값에서 0을 빼준다
  text("andong", i=i+a, 200);//andong이라는 문자열이 x축이 a에 따라 움직이는 속도가 조절된다
  if(i>800) i=0;//i가 창의 크기인 800보다 커지면 i를 0으로 초기화 해줌으로써 x축의 위치를 조절할 수 있다.
}
