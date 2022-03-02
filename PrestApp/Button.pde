public class Button {
  private PVector posicio;
  private String strText;
  private color col;
  private int alt;
  private int ample;
  
  public Button() {
  }
  
  public Button (PVector p, String s, color c, int a, int h) {
    posicio = p.copy();
    strText = s;
    col = color(155);
    alt = 10;
    ample = 50;
  }
  
  /*public void display() {
    rect(posX, posY, ample, alt); 
  }*/
}
