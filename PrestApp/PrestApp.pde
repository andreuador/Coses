PImage fons;
PFont font;
ArrayList alPrestecs;

int rectX, rectY;

TextBox textbox1;
TextBox textbox2;

void setup() {
  size(1000, 600);
  fons = loadImage("fons.png");
  image(fons, 0, 0);
  font = createFont("MONO.ttf", 50);
  
  alPrestecs = new ArrayList();
  
  dibuixarTitol();
  dibuixarText();
  textbox1 = new TextBox(50, 100, 300, 50);
  textbox2 = new TextBox(50, 250, 300, 50);
}

void draw() {
  
  textbox1.display();
  textbox2.display();
  dibuixarFormulari();
  /*for (int i = 0; i < alPrestecs.size(); i ++) {
    Prestec aux = alPrestecs.get(i);
    mostrarLinea(aux);
  }*/


}

void mostrarLinea(Prestec p) {
  
}

void dibuixarFormulari() {
  
}

void dibuixarTitol() {
  fill(255);
  textFont(font);
  textSize(50);
  text("PRESTAPP", 400, 50);
}

void dibuixarText() {
  fill(255);
  textFont(font);
  textSize(25);
  text("Objecte:", 50, 90);
  text("Persona:", 50, 240);
}


/*void mouseClicked() {
  if(mouseOverButtonAfig) {
    Prestec p = new Prestec();
    alPrestecs.add(p);
  }
}*/
