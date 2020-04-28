import processing.net.*;
Server s;
Client c;
int i,a=1;
void setup(){
  s = new Server(this, 11111);
  size(800,300);
}
void draw(){
  c = s.available();
  if(c!=null){
   String m = c.readString();
   int n = m.indexOf("\r\n\r\n")+4;
   m = m.substring(n);
   print(m);
  }
}
