void setup() {
}

void draw() {
  int A = (int)random(0, 500);
  int B = (int)random(0, 500);
  if (A > B) {
    System.out.println("A " + A + " és major que B " + B);
  }
  else if (B > A) {
    System.out.println("A " + A + " és menor que B " + B);
  }
  else {
    System.out.println("A " + A + " és igual que B " + B);
  }
  delay(1000);
}
