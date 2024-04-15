String nombre = "escribe tu nombre:";
String nombre2 = "";
String saludo = "";

void setup() {
  size(400, 200);
  println(nombre);
}

void draw() {
  background(0);
  text(saludo, 100, 100);
  textSize(32);

}

void keyPressed() {
  nombre2 += key;
  println(nombre2);
  
  if (key == '\n') {
    saludo = "Hola, " + nombre2 + "Bienvenido!";
    println(saludo);
  }
}
