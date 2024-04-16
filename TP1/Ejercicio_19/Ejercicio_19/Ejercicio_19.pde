int linea;
int dir = 1;

void setup() {
  size(400, 400);
  linea = height / 2;
}

void draw() {
  background(0);
  linea += dir;
  int ellipseY = linea + (dir * 40);
  if (linea >= height || linea <= 0) {
    dir *= -1;
  }
  
  stroke(255);
  line(0, linea, width, linea);
  fill(0, 255, 0);
  ellipse(width / 2, ellipseY, 80, 80);
}
