public class Obstacle extends Rectangle {
  float speed;
  
  public Obstacle(float x, float y, float w, float h, float s) {
    super(x, y, w, h);
    speed = s;
  }
  
  public void update() {
    x = x + speed;
    
    if (speed > 0 && x > width+grid) {
      x = -w-grid;
    }
    else if (speed < 0 && x < -w-grid) {
      x = width + grid;
    }
  }
  
  public void show(){
   fill(200);
   rect(x, y, w, h);
  }
}
