float a = 1, b = -3, c = 2; 

void setup() {
  size(400, 200);
  float discriminante = b*b - 4*a*c; 
  if (discriminante > 0) {
    float raiz1 = (-b + sqrt(discriminante)) / (2 * a);
    float raiz2 = (-b - sqrt(discriminante)) / (2 * a);
    println("Las raíces son: " + raiz1 + " y " + raiz2);
  } else if (discriminante == 0) {
    float raiz = -b / (2 * a);
    println("La raíz doble es: " + raiz);
  } else {
    println("No hay raices reales");
  }
}
