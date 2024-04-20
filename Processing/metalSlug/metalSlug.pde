PImage fondo;
PImage personaje;
PImage nave;
PImage misil;
int anchoBloque = 80; 
int altoBloque = 40; 
float personajeX = 330; 
float personajeY = 460; 
float velocidadPersonaje = 5;
float naveX = 300; 
float naveY = 20; 
float velocidadNave = 3;
boolean direccionDerecha = true;
float misilX;
float misilY = -50;
float velocidadMisil = 3;

void setup() {
  size(800, 600); 
  fondo = loadImage("fondo1.jpg"); 
  fondo.resize(width, height); 
  personaje = loadImage("personaje.png"); 
  personaje.resize(100,100);
  nave = loadImage("nave.png");
  nave.resize(150, 150);
  misil = loadImage("misil.png");
  misil.resize(150,150);
  misilX = random(width - misil.width);
}

void draw() {
  image(fondo, 0, 0); 
  image(personaje, personajeX, personajeY);
  image(nave, naveX, naveY); 
  if (direccionDerecha) {
    naveX += velocidadNave;
  } else {
    naveX -= velocidadNave;
  }
  if (naveX <= 0 || naveX >= width - nave.width) {
    direccionDerecha = !direccionDerecha;
  }
  for (int x = 0; x < width; x += anchoBloque) {
    for (int y = height - altoBloque; y < height; y += altoBloque) {
      rect(x, y, anchoBloque, altoBloque); 
      fill(100);
    }
  }
  image(misil, misilX, misilY); 
  misilY += velocidadMisil;
  if (misilY > height) {
    misilY = -50; 
    misilX = random(width - misil.width); 
  }
}

void keyPressed() {
  if (keyCode == LEFT && personajeX > 0) {
    personajeX -= velocidadPersonaje;
  }
  if (keyCode == RIGHT && personajeX < width - personaje.width) {
    personajeX += velocidadPersonaje;
  }
}
