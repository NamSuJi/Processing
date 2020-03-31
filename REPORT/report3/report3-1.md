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
