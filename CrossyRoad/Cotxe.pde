public class Cotxe extends Vehicle {
  
  
  public Cotxe(PVector v) {
    super(v);
    img = loadImage("media/car.png");
    vel = new PVector();
    vel.x = random(0.5, 3);
  }
}
