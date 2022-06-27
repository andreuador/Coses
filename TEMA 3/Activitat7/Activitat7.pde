void setup() {
}

void draw() {
  int N1 = (int)random(-100, 100);
  int N2 = (int)random(-100, 100);
  System.out.println("Numero 1: " + N1 + " Numero 2: " + N2);
  if (N1 == 0 || N2 == 0) {
    System.out.println("Són valors negatius o nuls");
  }
  else if (N1 < N2 && N2 % N1 == 0) {
    System.out.println(N1 + " és múltple de " + N2);
  }
  else if (N2 > N1 && N1 % N2 == 0) {
    System.out.println(N2 + " és múltple de " + N1);
  }
  else {
    System.out.println("No són múltiples");
  }
  delay(1000);
}
