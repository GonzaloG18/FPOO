float x1 = 100, y1 = 100;
float x2, y2;
float distanciaTesoro = 50; 
boolean powerUp = false;

void setup() {
  size(800, 600);
  x2 = random(width - 40) + 20;
  y2 = random(height - 40) + 20; 
}

void draw() {
  background(0);
  float dx = x2 - x1;
  float dy = y2 - y1;
  float distancia = sqrt(dx*dx + dy*dy);
  String textoDistancia = "La distancia es de: " + distancia;
  println(textoDistancia);
  if (distancia <= distanciaTesoro && !powerUp) {
    println("¡Power-Up activado!");
    powerUp = true;
    x2 = random(width - 40) + 20;
    y2 = random(height - 40) + 20; 
  }
  if (!powerUp) {
    fill(255, 255, 0);
    rect(x2, y2, 40, 40); 
  }
  fill(255, 0, 0); 
  ellipse(x1, y1, 40, 40);
}

void mouseMoved() {
  x1 = mouseX;
  y1 = mouseY;
}
