import processing.net.*;
Server s;
Client c;
int i=0,a=1;
void setup(){
  s = new Server(this, 11111);
  
  size(800,300);
}
void draw(){
  background(0,0,255);
  c = s.available();
  if(c!=null){
    String m=c.readString();
    m = m.substring(m.length()-1);
    if(m.equals("0")) a = 0;
    if(m.equals("3")) a = 3;
    if(m.equals("5")) a = 5;
  }
  textSize(30);
  text(a,750,50);
    
  textSize(128);
  text("Graphics",i=i+a,200);
  if(i>800) i=0;
}
