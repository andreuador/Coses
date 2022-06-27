void setup() {
}

void draw() {
  int A = (int)random(0, 100);
  int B = (int)random(0, 100);
  
  System.out.println("Numero 1: " + A + "Numero 2: " + B);
  if (A < B) {
    if (B % A == 0) {
      System.out.println(A + " és múltiple de " + B);
    }
  }
  else if (B < A) {
    if (A % B == 0) {
      System.out.println(B + " és múltiple de " + A);
    }
  }
  else {
    System.out.println("No són múltiples");
  }
  delay(1000);
}
