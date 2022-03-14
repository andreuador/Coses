public class Vehicle {
  protected PVector loc;            //Localització
  protected PVector vel;            //Velocitat
  protected PImage img;             //Foto
  protected boolean enabled;
  
  public Vehicle(PVector v) {
    loc = v.copy();
    enabled = false;
  }
  
  public void display() {
    image(img, loc.x, loc.y);
  }
  
  public void update() {
    //loc.x += vel;
    loc.add(vel);
  }
}
