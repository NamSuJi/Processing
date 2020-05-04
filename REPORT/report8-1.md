1. 소스 코드  
```
PImage tex;
float rotx = PI/4;
float roty = PI/4;

void setup() {
  size(640, 360, P3D);
  tex = loadImage("ikm.jpg");
  textureMode(NORMAL);
  fill(255);
  stroke(color(44,48,32));
}

void draw() {
  background(0);
  noStroke();
  translate(width/2.0, height/2.0, -100);
  rotateX(rotx);
  rotateY(roty);
  scale(90);
  TexturedCube(tex);
}

void TexturedCube(PImage tex) {
  beginShape(QUADS);//vertex를 4개 단위로 나눠서 선을 잇기 위한 QUADS 선언
  texture(tex);
  
  //vertex는 다각형을 그리기 위해 사용
  // +Z "front" face
  vertex(-1, -1,  1, 0, 0);
  vertex( 1, -1,  1, 1, 0);
  vertex( 1,  1,  1, 1, 1);
  vertex(-1,  1,  1, 0, 1);

  // -Z "back" face
  vertex( 1, -1, -1, 0, 0);
  vertex(-1, -1, -1, 1, 0);
  vertex(-1,  1, -1, 1, 1);
  vertex( 1,  1, -1, 0, 1);

  // +Y "bottom" face
  vertex(-1,  1,  1, 0, 0);
  vertex( 1,  1,  1, 1, 0);
  vertex( 1,  1, -1, 1, 1);
  vertex(-1,  1, -1, 0, 1);

  // -Y "top" face
  vertex(-1, -1, -1, 0, 0);
  vertex( 1, -1, -1, 1, 0);
  vertex( 1, -1,  1, 1, 1);
  vertex(-1, -1,  1, 0, 1);

  // +X "right" face
  vertex( 1, -1,  1, 0, 0);
  vertex( 1, -1, -1, 1, 0);
  vertex( 1,  1, -1, 1, 1);
  vertex( 1,  1,  1, 0, 1);

  // -X "left" face
  vertex(-1, -1, -1, 0, 0);
  vertex(-1, -1,  1, 1, 0);
  vertex(-1,  1,  1, 1, 1);
  vertex(-1,  1, -1, 0, 1);

  endShape();
}

void mouseDragged() {
  float rate = 0.01;
  rotx += (pmouseY-mouseY) * rate;
  roty += (mouseX-pmouseX) * rate;
}
```
<br/><br/>
2. 결과  
![결과사진](https://user-images.githubusercontent.com/52815908/80966842-425adb80-8e50-11ea-9bbd-cecc919d2aea.JPG)  
<br /><br/>
3. 소감: 예제를 이용해 손쉽게 정육면체를 생성하고 제가 좋아하는 사진으로 텍스쳐 매핑이 가능했습니다. 
vertex를 사용하고 이해하기는 어렵지만 나머지는 자료를 찾아보며 이해할 수 있었습니다. 
프로세싱에서 바로 주석을 적기에는 한글이 깨져나와 깃허브에서만 주석을 달 수 있어서 번거롭긴하지만 나중에 제가 이해한 걸 보면서 다른 구현을 해보고 싶습니다.
