class Animal {
    float x, y;
    float speedX, speedY;
    float maxhunger, hunger;
    int s;
    boolean isAlive;
    float ratio;
    color cc;
    int nomz;
    int aW;
    int aH;
    int cx;
    int cy;
    boolean perished;

    Animal(int X, int Y, int Xfast, int Yfast, int size) {
      isAlive = true;
      x = X;
      y = Y;
      nomz = 100;
      hunger = nomz;
      speedX = Xfast;
      speedY = Yfast;
      s = size;
      aH = int(random(5, size + 1));
      aW = int(random(5, size + 1));
      ratio = aH / aW;
      cc = color(0);
      cx= int(x+size/2);
      cy = int(y +size/2);
    }

    Animal(float ax, float ay) {
      x = ax;
      y = ay;
      speedX = random(1, 3);
      speedY = random(1, 3);
      maxhunger = random(10, 20);
      hunger = 0;
      isAlive = true;
    }

    void move() {
        x += speedX;
        y += speedY;
    }

    void eat(ArrayList<Food> foods) {
      for (Food food : foods) {
        if (collisionCheck(food.getX(), food.getY(), food.getSize())) {
          // Perform eat action
        }
      }
    }
    
    void die() {
        isAlive = !isAlive;
    }

    void perish() {
        isAlive = !isAlive;
        perished = true;
    }

    void display() {
        rectMode(CENTER);
        if (isAlive) {
          fill(255, 0, 0);
          rect(x, y, 20, 20);
        }
        hunger++;
    }

    boolean collisionCheck(float xz, float yz, int sz) {
        if (abs(x - xz) <= s + sz && abs(y - yz) <= s + sz) {
            return true;
        }
        return false;
    }

  void keepInTank(int tankX, int tankY, int tankW, int tankH) {
    if (x < tankX) {
      x = tankX;
      speedX = abs(speedX);
    } else if (x > tankX + tankW) {
      x = tankX + tankW;
      speedX = -abs(speedX);
    }
    if (y < tankY) {
      y = tankY;
      speedY = abs(speedY);
    } else if (y > tankY + tankH) {
      y = tankY + tankH;
      speedY = -abs(speedY);
    }
  }

  void deathSkullEmojiTimesTen() {
    if (this.hunger >= maxhunger) {
      isAlive = false;
    }
  }
}
