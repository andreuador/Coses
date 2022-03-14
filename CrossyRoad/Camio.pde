public class Camio extends Vehicle {
  
  
  public Camio(PVector v) {
    super(v);
    img = loadImage("media/truck.png");
    vel = new PVector();
    vel.x = random(0.4, 0.8);
    
  }
}
