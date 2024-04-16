void setup(){
  size(600,600);
  int x = 0, y = 100, circuloY = 75, dist = 30;
  do{
    int circuloX = dist;
  do{
    stroke(#008DFC);
    line(x,y,width,y); 
    fill(random(255), random(255), random(255)); 
    stroke(0);
    strokeWeight(2);
    ellipse(circuloX,circuloY,50,50);
    circuloX += dist*2; 
}while(circuloX < width);
    y += 100;
    circuloY += 200;
}while(y < height);
}
