PVector coordenadasRect;
int alto, ancho, distanciaEntreRect;

void setup() {
  size(440, 420);
  background(235,235,200);
  distanciaEntreRect = 20;
  ancho = 40;
   alto = 20;
  coordenadasRect = new PVector(distanciaEntreRect, distanciaEntreRect);
}

void draw() {
  dibujarR();
}

void dibujarR() {
  for (float y = coordenadasRect.y; y < height; y += (alto + distanciaEntreRect)) {
    for (float x = coordenadasRect.x; x < width; x += (ancho + distanciaEntreRect)) {
     rect(x, y, ancho, alto);
     fill(255,0,0);
    }
  }
}
