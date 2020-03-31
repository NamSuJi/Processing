```
boolean overButton = false;

void setup() {
  size(640, 360);
}

void draw() {
  background(204);

  if (overButton == true) {
    fill(0);
    strokeWeight(5);
    stroke(255);
  } else {
    noFill();
    strokeWeight(1);
    stroke(0);
  }
  rect(105, 60, 75, 75);
  line(135, 105, 155, 85);
  line(140, 85, 155, 85);
  line(155, 85, 155, 100);
}

void mousePressed() {
  if (overButton) { 
    link("https://github.com/NamSuJi/Processing");
  }
}

void mouseMoved() { 
  checkButtons(); 
}
  
void mouseDragged() {
  checkButtons(); 
}

void checkButtons() {
  if (mouseX > 105 && mouseX < 180 && mouseY > 60 && mouseY <135) {
    overButton = true;   
  } else {
    overButton = false;
  }
}
```
#### 실행 결과
Before  
![before](https://user-images.githubusercontent.com/52815908/78014111-6c693b80-7382-11ea-8a08-d9b9c9df9260.JPG)  
After  
![after](https://user-images.githubusercontent.com/52815908/78014108-6b380e80-7382-11ea-8b44-79002f3b8c8b.JPG)

* 예제를 통해 새로운 프로그램을 실습할 수 있어서 좋았습니다. 다양한 예제를 다루다보면 실력이 향상될 거라 생각됩니다. 너무 어려운 예제는 아직 다루지 못하여 이해할 수 있는 예제들 중에서 마우스가 올라왔을 시에 나타나는 효과를 바꿔줬습니다.
