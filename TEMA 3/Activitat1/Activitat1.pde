void setup() {
}

void draw() {
  System.out.println("Quina hora és?");
  int hora = (int)random(0, 23);
  int min = (int)random(0, 59);
  System.out.println("Són les " + hora + "h " + min + "min");
  if (hora >= 7 && hora <= 9) {
    System.out.println("Eres matiner");
  }
  else if (hora > 9 && hora <= 12) {
    System.out.println("Deuries haver esmorzat ja");
  }
  else if (hora > 12 && hora <= 15) {
    System.out.println("Es hora de dinar si no has dinat");
  }
  else if (hora > 15 && hora <= 18) {
    System.out.println("Si no has fet una migdiada oblidat");
  }
  else
    System.out.println("Hora de la cervesa");
    
  delay(1000);
  clear();
}
