Frog frog;
Lane [] lanes;

float grid = 50;                                                    //Tamany entre les quadricules
final int SAFETY = 1;
final int CAR = 2;
final int CAMIO = 3;

void setup() {
  size(500, 550);
  resetGame();
  int totalLanes = int(height / grid);
  lanes = new Lane[totalLanes];
  lanes [0] = new Lane(0, color(100));                              //Inici
  lanes [1] = new Lane(1, CAMIO, 3, 1, 150, 3);                     //Fila, camió, ample, seperació entre ells, velocitat
  lanes [2] = new Lane(2, CAMIO, 2, 3, 350, -2.5);                  //Fila, camió, ample, seperació entre ells, velocitat
  lanes [3] = new Lane(3, CAMIO, 4, 1, 200, 1);                     //Fila, camió, ample, seperació entre ells, velocitat
  lanes [4] = new Lane(4, CAMIO, 3, 2, 250, -1.7);                  //Fila, camió, ample, seperació entre ells, velocitat
  lanes [5] = new Lane(5, color(100));                              //Checkpoint
  lanes [6] = new Lane(6, CAR, 3, 1, 150, 2.4);                     //Fila, cotxes, ample, seperació entre ells, velocitat
  lanes [7] = new Lane(7, CAR, 2, 2, 150, -3.6);                    //Fila, cotxes, ample, seperació entre ells, velocitat
  lanes [8] = new Lane(8, CAR, 1, 3, 150, 2.3);                     //Fila, cotxes, ample, seperació entre ells, velocitat
  lanes [9] = new Lane(9, CAR, 4, 1, 150, -1);                      //Fila, cotxes, ample, seperació entre ells, velocitat
  lanes [10] = new Lane(10, color(100));                            //Checkpoint
}

void draw() {
  background(0);
  for (Lane lane : lanes ) {
    lane.run();
  }
  
  int laneIndex = int(frog.y / grid);
  lanes[laneIndex].check(frog);
  frog.update();
  frog.show();
}

void resetGame() {
  frog = new Frog(width/2 - grid/2, height-grid, grid);
  frog.attached(null);
}

void keyPressed() {
  if (keyCode == UP) {
    frog.move(0, -1);
  }
  else if (keyCode == DOWN) {
    frog.move(0, 1);
  }
  else if (keyCode == RIGHT) {
    frog.move(1, 0);
  }
  else if (keyCode == LEFT) {
    frog.move(-1, 0);
  }
}
