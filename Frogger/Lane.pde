public class Lane extends Rectangle {
  Obstacle [] obstacles;
  int col;
  int type;
  
  public Lane(int index, color c) {
    super(0, index*grid, width, grid);
    type = SAFETY;
    obstacles = new Obstacle[0];
    col = c;
    
  }

  public Lane(int index, int s,  int n, int len, float spc, float speed) {
    super(0, index*grid, width, grid);
    obstacles = new Obstacle[n];
    type = s;
    float spacing = spc;
    float offset = random(0, 200);
    
    for (int i = 0; i < n; i++) {
      obstacles[i] = new Obstacle(offset + spacing * i, index*grid, grid*len, grid, speed);
    }
    col = color(0);
  }

  public void run() {
    fill(col);
    rect(x, y, w, h);
    for (Obstacle o : obstacles) {
      o.show();
      o.update();
    }
  }
  
  public void check(Frog f) {
    if (type == CAR) {
      for (Obstacle o : obstacles) {
        if (f.interseccio(o)) {
          resetGame();
          println("FIN");
        }
      }
    }
    else if (type == CAMIO) {
      for (Obstacle o : obstacles) {
        if (f.interseccio(o)) {
          resetGame();
          println("FIN");
        }
      }
    }
  }
}
