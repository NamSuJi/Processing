import processing.net.*;
Server s;
Client c;
int i,a=1;
void setup(){
  s = new Server(this, 11111);
  
  size(800,300);
  textSize(128);
}
void draw(){
  c = s.available();
  if(c!=null){
    String m=c.readString();
    m = m.substring(m.length()-1);
    if(m.equals("1")) a = 1;
    if(m.equals("3")) a = 3;
    if(m.equals("5")) a = 5;
    
    text("Graphics",i=i+a,200);
    if(i>800) i=0;
  }
}
