class Turtle extends Animal {
    int freezeTime;
    boolean isFrozen; 

    Turtle(int x, int y, int Xfast, int Yfast, int size) {
        super(x, y, Xfast, Yfast, size);
        freezeTime = 60;
        isFrozen = false;
    }
  void move() {
    if (!isFrozen) {
      x += speedX;
      y += speedY;
      if (x < 0 || x > width || y < t.floorHeight || y > height) {
          speedX *= -1;
          speedY *= -1;
      }
    }
    if (isFrozen) {
      freezeTime--;
      if (freezeTime <= 0) {
          isFrozen = false;
          speedX = random(-1, 1); 
          speedY = random(-1, 1);
        }
    }
  }
  void generateUnderFloor() {
        x = random(width); 
        y = random(0, t.floorHeight); 
    }
    void eat(ArrayList<Food> foods) {
      super.eat(foods);
      if (!isFrozen && random(1) < 0.3) {
        isFrozen = true;
        freezeTime = (int) random(60, 240);
        if(random(1) < 0.5){
          
      }
    }
    }
  void display() {
    if (!isFrozen) {
      super.display();
    }
  }
void keepInTank() {
    if (x < 0) {
        x = 0;
        speedX = abs(speedX);
    } else if (x > width) {
        x = width;
        speedX = -abs(speedX);
    }

    if (y < 0) {
        y = 0;
        speedY = abs(speedY);
    } else if (y > height) {
        y = height;
        speedY = -abs(speedY);
    }
}

}
