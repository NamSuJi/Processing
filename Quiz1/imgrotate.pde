PImage webImg;
float x,y,rot;
void setup() {
  size(1000,1000);
  String url = "https://i.pinimg.com/originals/6b/5a/8c/6b5a8cc63ce660cd4dd0bc7752f31a98.png";
  // Load image from a web server
  webImg = loadImage(url, "png");
  x = width/2;
  y = height/2;
  rot=0;
}
void draw() {
  background(0);
  translate(x, y);
  rotate(rot);
  image(webImg, 0, 0, webImg.width/4, webImg.height/4);
  rot += 0.01;
}
