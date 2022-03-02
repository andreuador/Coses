public class TextBox {
  private int x;
  private int y;
  private float xCursor;
  private int alt;
  private int ample;
  private boolean bFocus;
  private boolean allSelected;
  private int timer;
  private boolean bShow;
  private String txtContent;
  private int maxText;
  
  public TextBox (int a, int b, int c, int d) {
    timer       = 0;
    x           = a;
    xCursor     = x + 5;
    y           = b;
    ample       = c;
    alt         = d;
    bFocus      = false;
    bShow       = false;
    allSelected = false;
    txtContent  = "";
    maxText     = 25;
  }
  
  public void display () {
    strokeWeight(1);
    stroke(0);
    fill(255);
    rect(x,y,ample,alt);
    fill(0);
    
    if (allSelected) {
      fill(0,0,200);
      rect(x+5, y+5, textWidth(txtContent)*1.14,15);
      fill(255);
    }
    
    if (bFocus)
      showTyper();
      
    text(txtContent, x+5, y+5, ample-5, alt-5);
  }
  
  public void update () {
    if (mouseOverIt())
      cursor(TEXT);
 
    else
      cursor(ARROW);
  }
  
  public void add(char c) {
    if ( txtContent.length() <= maxText) {
      txtContent += c;
      xCursor = x + 5 + textWidth(txtContent) + txtContent.length()+2;
    }
  }
  
  public void removeLast() {
    if ( txtContent.length() > 0 ) {
      if ( allSelected ) {
        txtContent = "";
        xCursor = x + 5;
      }
      else {
        txtContent = txtContent.substring(0,txtContent.length()-1);
        xCursor = x + 5 + textWidth(txtContent) + txtContent.length()+2;
      }
    }
  }
  public void setAllSelected(boolean value) {
    allSelected = value;
  }
  
  private void showTyper() {
    if (bShow && timer < 30) {
      timer ++;
      line(xCursor,y+5,xCursor,y+20);
    }
    else if(bShow && timer >= 30) {
      timer ++;
      if (timer == 60)
        timer = 0;
    }
  }
  
  public void setFocused(boolean value) {
    bFocus = value;
    bShow  = value;
    timer = 0;
  }
  
  public boolean isFocused() {
    return bFocus;
  }
  
  public boolean mouseOverIt() {
    if (mouseX >= x && mouseX <= x+ample && mouseY >= y && mouseY <= mouseY+alt) 
      return true;
      
    return false;
  }
}
