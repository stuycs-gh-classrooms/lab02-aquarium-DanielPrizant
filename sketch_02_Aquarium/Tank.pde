class Tank {
  int x, y, w, h, floorHeight;
  ArrayList<Animal> mobs;
  ArrayList<Food> foods;
  int numFoods;
  int numAnimals;

  Tank(int tx, int ty, int tw, int th, int tfloorHeight) {
    x = tx;
    y = ty;
    w = tw;
    h = th;
    floorHeight = tfloorHeight;
    numFoods = 0;
    numAnimals = 0;
    mobs = new ArrayList<Animal>();
    foods = new ArrayList<Food>();
  }

  void display() {
    rectMode(CORNER);
    fill(0, 0, 255);
    rect(x, y, w, h);
    fill(139, 69, 19);
    rect(x, y + h - floorHeight, w, floorHeight);
    
    for (Animal animal : mobs) {
      animal.display();
    }
    
    for (Food food : foods) {
      food.display();
    }
  }

  void moveAnimals() {
    for (Animal animal : mobs) {
      animal.move();
      animal.keepInTank(x, y, w, h - floorHeight);
    }
  }
  
  void addFood(int x, int y) {
    foods.add(new Food(x, y, 5));
    numFoods++;
  }

  void addAnimal(int posX, int posY) {
    mobs.add(new Animal(posX, posY));
    numAnimals++;
  }
  
  void addCrab(int x) {
    mobs.add(new Crab(x, 0, 1, 1, 10));
    numAnimals++;
  }

  void addFish(int x, int y) {
    mobs.add(new Fish(x, y, 1, 1, 10));
    numAnimals++;
  }

  void addGoldFish(int x, int y) {
    mobs.add(new Goldfish(x, y, 1, 1, 10));
    numAnimals++;
  }

  void addTurtle(int x, int y) {
    mobs.add(new Turtle(x, y, 1, 1, 10));
    numAnimals++;
  }
}
