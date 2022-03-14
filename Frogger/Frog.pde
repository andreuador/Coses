public class Frog extends Rectangle {
  
  Obstacle attached = null;
  
  public Frog(float x, float y, float w) {
    super(x, y, w, w);
  }
  
  public void attached(Obstacle log) {
    attached = log;
  }
  
  public void update() {
    if (attached != null) {
      frog.x += attached.speed;
    }
    frog.x = constrain(x, 0, width-w);
  }
  
  public void show(){
    //fill(84, 207, 44);
    //rect(x, y, w, w);
    img = loadImage("homer.png");
  }
  
  public void move(float dirX, float dirY) {
    x += dirX * grid;
    y += dirY * grid;
    attached(null);
  }
}
