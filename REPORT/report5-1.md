> #### 1.OpenGL
>
> 1) 정의 : 
>
> 2) 응용 : 
>
> #### 2.PGraphics 예제
```
PGraphics pg;
void setup() {
  size(300, 300);
  pg = createGraphics(200, 200);//size change
}

void draw() {
  pg.beginDraw();
  pg.background(0,0,255);//배경색 파란색으로 지정
  pg.stroke(255);//line의 색은 하얀색
  pg.line(pg.width*0.5, pg.height*0.5, mouseX, mouseY);
  pg.ellipse(pg.width*0.5, pg.height*0.5,mouseX-100,mouseY-100);//line의 시작 위치와 동일한 곳에 원 생성
  pg.rect(pg.width*0.7,pg.height*0.7,mouseX-100,mouseY-100,7);//line의 끝 위치에 사각형 생성
  pg.endDraw();
  image(pg, 50, 50); //pg를 위치 x-50, y-50으로 지정
}
```
>
>> 결과 사진  
>> ![image](https://user-images.githubusercontent.com/52815908/79108733-e7364b80-7db1-11ea-83f1-6f85850a7cd6.png)  
>
> #### 3.PShape 예제
>> 
```
PShape house;//모양을 저장한 데이터 타입
void setup() {
  size(200, 200);

  // Make a group PShape, 여러 개의 PShape를 대표명 house로 묶음
  house = createShape(GROUP);
  
  // Make three shapes
  PShape path = createShape();
  path.beginShape();//임의의 모양 그리기
  path.vertex(-20, -20);
  path.vertex(0, -40);
  path.vertex(20, -20);
  path.endShape();
  //개별 shape 생성
  PShape rect1 = createShape(RECT, -20, -20, 40, 40);
  PShape rect2 = createShape(RECT, -10, -10, 20, 30);
  PShape circle = createShape(ELLIPSE, -3, 3, 5, 5);
  
  // Add all three as children, 그룹에 개별의 shape추가
  house.addChild(path);
  house.addChild(rect1);
  house.addChild(rect2);
  house.addChild(circle);
}

void draw() {
  background(52);
  translate(mouseX, mouseY);//마우스의 위치에 따라 움직임
  shape(house);//draw the group
}
```
>
>> 결과 사진  
>> ![image](https://user-images.githubusercontent.com/52815908/79109863-2bc2e680-7db4-11ea-8ce2-95c1d6917d99.png)  
>
> #### 소감
>> 예제를 변형하기 위해 차근차근 왜 저런 식으로 구성하였는지, 문장들이 어떤 역할을 하는지에 대해 해석하는 좋은 기회가 되었습니다. 예제의 틀에서 크게 바뀌지는 않았지만 이해를 하였고 어떤 식으로 문장을 추가하면 어떻게 구현이 되는지 예상을 할 수 있다는게 큰 성장의 기회가 된 것 같습니다.
