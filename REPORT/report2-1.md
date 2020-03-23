'''
void setup(){
  size(800,300);
  fill(255,0,0)
  textSize(128);
}
int i,a=1;
void draw(){
  background(0,0,255);
  if(keyPressed) a = key-'0';
  text("Graphics", i=i+a, 200);
  if(i>800) i=0;
}
'''
* 움직이는 로고에 대해서 깊게 생각해 본 적이 없는데 잘 배울 수 있어서 좋은 기회가 된 것 같습니다. 움직이는 배너를 만들 때 원하는 속도를 정할 수 있어 좋은것 같습니다.
