class Tank {
  int x, y, w, h, floorHeight;
  Animal[] animals;
  int numAnimals;

  Tank(int tx, int ty, int tw, int th, int tfloorHeight) {
    x = tx;
    y = ty;
    w = tw;
    h = th;
    floorHeight = tfloorHeight;
    animals = new Animal[50]; 
    numAnimals = 0;
  }

  void display() {
    fill(0, 0, 255);
    rect(x, y, w, h);
    fill(139, 69, 19);
    rect(x, y + h - floorHeight, w, floorHeight);
    
    for (int i = 0; i < numAnimals; i++) {
      animals[i].display();
    }
  }

  void moveAnimals() {
    for (int i = 0; i < numAnimals; i++) {
      println(i);
      animals[i].move(); 
      animals[i].keepInTank(x, y, w, h - floorHeight); 
    }
  }

  void addAnimalCrab(int posX, int posY) {
    if (numAnimals < animals.length) {
      
    }
  }

void addAnimalFish(int posX, int posY) {
    if (numAnimals < animals.length) {
      
    }
  }


void addAnimalGoldFish(int posX, int posY) {
    if (numAnimals < animals.length) {
      
    }
  }


void addAnimalTurtle(int posX, int posY) {
    if (numAnimals < animals.length) {
      
    }
  }
  
void addAnimal(int posX, int posY) {
    if (numAnimals < animals.length) {
      if(posY < floorHeight){
        int temp = int(random(2));
        if(temp == 1){
          //add crab
        }
        else if(temp == 2){
          //add Turtle
        }
        else{
          println( "-1");
        }
      }
    }
  }  
}
