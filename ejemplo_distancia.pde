int posicionM, posicionK, distanciaMK;

public void setup (){
  posicionM=5;
  posicionK=10;
  calcularDistancia();
  mostrarDistancia();
}

public void calcularDistancia(){
  distanciaMK=posicionK - posicionM;
}

public void mostrarDistancia(){
  println(distanciaMK);
}
