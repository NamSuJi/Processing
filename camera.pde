float angle;

void setup() {
  size(400, 400, P3D);
  noStroke();
}

void draw() {
  background(0);
  camera(width/2, height/2, 300, width/2, height/2, 0, 0, 1, 0);
  //camera(eyeX,eyeY,eyeZ,centerX,centerY,upX,upY,upZ);
  
  pointLight(200, 200, 200, width/2, height/2, -200);
  //빛을 어디에서 쏴줄거냐를 정함
  //pointLight(R,G,B,x,y,z);
  
  translate(width/2, height/2);
  rotateY(angle);
  
  beginShape(QUADS);//사각형을 뜻함
  normal(0, 0, 1);//어떤 쪽으로 나타낼거냐
  fill(20, 20, 200);
  vertex(-100, +100);
  vertex(+100, +100);
  fill(200, 20, 20);
  vertex(+100, -100);
  vertex(-100, -100);
  endShape();
  
  angle += 0.01;
}
