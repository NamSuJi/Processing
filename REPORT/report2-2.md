```
void setup(){
  size(800,300);
  fill(255,0,0);
  textSize(128);
}
int i, dir=1, sp=1;
void draw(){
  background(255,255,0);
  text("안동대 컴공 사랑합니다", 200, i);
  if(i>width) dir=-1;
  if(i<0) dir=1;
  i = i+dir*sp;
  if(keyPressed) sp = key-'0';
}
```
* 처음에 했던 것과는 비슷해서 다행히 어렵지 않게 할 수 있었습니다. 많을 것을 배울 수 있었습니다. 교수님께서 쉽게 설명해주셔서 가능한 것 같습니다. 
