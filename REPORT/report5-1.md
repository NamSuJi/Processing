>
>>
```
PGraphics pg;
void setup() {
  size(300, 300);
  pg = createGraphics(200, 200);//size change
}

void draw() {
  pg.beginDraw();
  pg.background(0,0,255);
  pg.stroke(255);
  pg.line(pg.width*0.5, pg.height*0.5, mouseX, mouseY);
  pg.ellipse(pg.width*0.5, pg.height*0.5,mouseX-100,mouseY-100);
  pg.rect(pg.width*0.7,pg.height*0.7,mouseX-100,mouseY-100,7);
  pg.endDraw();
  image(pg, 50, 50); 
}
```
>
>> 결과 사진
>
>> ![image](https://user-images.githubusercontent.com/52815908/79108733-e7364b80-7db1-11ea-83f1-6f85850a7cd6.png)
