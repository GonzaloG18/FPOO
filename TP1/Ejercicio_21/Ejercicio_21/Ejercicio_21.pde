int d;
PVector p1, p2, p3, p4;

public void setup (){
  size(500,500);
  d=60;
  p1 = new PVector(0,d);
  while(p1.y <= height){
  escalon();
  circulo();
  repeticion();
  }
}

public void escalon(){
  stroke(#00BEDE);
  strokeWeight(5);
  p2 = new PVector(p1.x+d, p1.y);
  line(p1.x, p1.y,p2.x,p2.y);
  p3 = new PVector(p2.x,p2.y+60);
  line(p2.x,p2.y,p3.x,p3.y);
}

public void circulo(){
  stroke(#FC030B);
  strokeWeight(9);
  p4 = new PVector(p2.x, p2.y-8);
  point(p4.x,p4.y);
}

public void repeticion(){
  p1.x = p3.x;
  p1.y = p3.y;
}
