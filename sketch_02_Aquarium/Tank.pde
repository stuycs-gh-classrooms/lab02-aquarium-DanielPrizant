class Tank {
  int x, y, w, h, floorHeight;
  Animal[] animals;
  Penguinz[] pengys;
  //Crabz[] crabs;
  int numAnimals;

  Tank(int tx, int ty, int tw, int th, int tfloorHeight) {
    x = tx;
    y = ty;
    w = tw;
    h = th;
    floorHeight = tfloorHeight;
    animals = new Animal[50]; 
    pengys = new Penguinz[50];
    numAnimals = 0;
  }

  void display() {
    fill(0, 0, 255);
    rect(x, y, w, h);
    fill(139, 69, 19);
    rect(x, y + h - floorHeight, w, floorHeight);
    
    for (int i = 0; i < numAnimals; i++) {
      pengys[i].display(); // changed from animals
    }
  }

  void moveAnimals() {
    for (int i = 0; i < numAnimals; i++) {
      println(i);
      pengys[i].move(); // changed from animals
      pengys[i].keepInTank(x, y, w, h - floorHeight); //changed from animals
    }
  }

  void addAnimal(int posX, int posY) {
    if (numAnimals < animals.length) {
      if(posX > floorHeight){
        pengys[numAnimals++] = new Penguinz(posX, posY);
      }
      if(posX <= floorHeight){
       // crabs[numAnimals++] = new Crab(posX, posY);
      }
    }
  }
}
