

ArrayList <Vehicle> C1;            //Carril Nº1
ArrayList <Vehicle> C2;            //Carril Nº2
ArrayList <Vehicle> C3;            //Carril Nº3
ArrayList <Vehicle> C4;            //Carril Nº4
ArrayList <Vehicle> C5;            //Carril Nº5

float grid = 30;

//PImage bg;
Homer h;
Cotxe c;
Camio t;

void setup() {
  size(960, 540);
  //bg = loadImage("media/bg.png");
  c = new Cotxe(new PVector(0, 460));
  t = new Camio(new PVector(0, 425));
  h = new Homer(width/2, 510, grid - 4);
}

void draw() {
  //image(bg, 0, 0);
  background(0);
  c.display();
  t.display();
  c.update();
  t.update();
  h.show();
}

void resetGame() {

}

void dibuixarBoto(int x, int y, String Text) {
  textSize(28);
  textAlign(CENTER,CENTER);
  rect(x,y,150,75);
  fill(0);
  text(Text, 640, y + 35); 
}

void keyPressed() {
  if (keyCode == UP) {
    h.move(0, -1);
  }
  else if (keyCode == DOWN) {
    h.move(0, 1);
  }
  else if (keyCode == RIGHT) {
    h.move(1, 0);
  }
  else if (keyCode == LEFT) {
    h.move(-1, 0);
  }
}
