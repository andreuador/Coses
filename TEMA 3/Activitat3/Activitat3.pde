void setup() {
}

void draw() {
  int num1 = (int)random(0, 500);
  int num2 = (int)random(0, 500);
  if (num2 == 0) {
    System.out.println("Error: Divisió per cero no permesa");
  }
  else {
    System.out.println("Dividim " + num1 + " entre " + num2);
    int resul = num1 / num2;
    int residu = num1 % num2;
    if (residu == 0) {
      System.out.println("El resultat ÉS exacte " + resul);
    }
    else {
      System.out.println("El resultat NO ÉS exacte " + resul + ", residu " + residu);
    }
  }
  delay(1000);
  clear();
}
