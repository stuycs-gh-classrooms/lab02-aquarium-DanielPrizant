class Animal {
  float x, y;
  float speedX, speedY;
  float maxAge, age;
  boolean isAlive;

  Animal(float ax, float ay) {
    x = ax;
    y = ay;
    speedX = random(1, 3);
    speedY = random(1, 3);
    maxAge = random(10,20);
    age = 0;
    isAlive = true;
  }

  void move() {
    x += speedX;
    y += speedY;
  }

  void display() {
    if(isAlive){
      fill(255, 0, 0); 
      rect(x, y, 20, 20);
    }
    else{
    }
    age++;
  }

  void keepInTank(int tankX, int tankY, int tankW, int tankH) {
    if (x < tankX) {
      x = tankX;
      speedX = abs(speedX);
    }
    else if (x > tankX + tankW) {
      x = tankX + tankW;
      speedX = -abs(speedX);
    }

    if (y < tankY) {
      y = tankY;
      speedY = abs(speedY);
    } 
    else if (y > tankY + tankH) {
      y = tankY + tankH;
      speedY = -abs(speedY);
    }
  }
  void deathSkullEmojiTimesTen(){
    if(this.age >= maxAge){
      isAlive = false;
    }
  }
}
