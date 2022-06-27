void setup() {
}

void draw() {
  int ANY = 2022;
  int ANYAL = (int)random(0, 2022);
  int dif = ANY - ANYAL;
  
  System.out.println("ANY ACTUAL " + ANY);
  System.out.println("ANY ALEATORI " + ANYAL);
  System.out.println("Falten " + dif + " anys per arribar");
  
  delay(1000);
}
