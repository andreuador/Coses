public class Rectangle{
  float x;
  float y;
  float w;
  float h;
  PImage img;
  
  
  public Rectangle(float x, float y, float w, float h) {
    this.x = x;
    this.w = w;
    this.y = y;
    this.h = h;
  }
  
  boolean interseccio(Rectangle other) {
    float left = x;
    float right = x + w;
    float top = y;
    float bottom = y + h;
    
    float oleft = other.x;
    float oright = other.x + other.w;
    float otop = other.y;
    float obottom = other.y + other.h;
    
    return !(left >= oright || right <= oleft || top >= obottom || bottom <= otop);
  }
}
