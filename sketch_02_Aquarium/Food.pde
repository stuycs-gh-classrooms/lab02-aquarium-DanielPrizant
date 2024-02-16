class Food {
  float x, y;
  int size;

  Food(float x, float y, int size) {
    this.x = x;
    this.y = y;
    this.size = size;
  }

  void display() {
    fill(0, 255, 0);
    ellipse(x, y, size, size); 
  }
  float getX() {
    return x;
  }

  float getY() {
    return y;
  }

  int getSize() {
    return size;
  }
}
