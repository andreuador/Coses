public class Homer {
  private float x;
  private float y;
  private float w;
  //protected PImage homer;
  
  public Homer(float tempX, float tempY, float tempW) {
    x = tempX;
    y = tempY;
    w = tempW;
  }
  
  public void show() {
    rect(x, y, w, w);
  }
  
  public void move(float xdir, float ydir) {
      x += xdir * grid;
      y += ydir * grid;
  }
}
