class Goldfish extends Animal {
  float fsize;
  boolean perished;
  boolean STOP;
  
  Goldfish(int x, int y) {
    super(x, y);
    fsize = sw * sh * PI;
    ratio = sh/sw;
  }
  Goldfish(int x, int y, int xFass, int yFass, int sw, int sh) {
    super(x, y, xFass, yFass, sw, sh);
    fsize = sw * sh * PI;
    ratio = sh/sw;
  }
  void display() {
    if(!STOP){
    hunger-= .1;
    if (perished) {
      speedY = 1;
      speedX = 0;
      fill(#808080);
      ellipse(cx, cy, sw, sh);

     if (pos.y >= height - t.floorHeight + random(00,20)) {
    speedY = 0;
  }
    }
    else if (isAlive) {
      fill(250, 200, 50);
      ellipse(cx, cy, sw, sh);
      if (speedX<0) {
        triangle(cx + sw/2, cy, cx + sw, cy + sh/2, cx + sw, cy - sh/2);
        fill(#000000);
        circle(cx - sw /4, cy - sh/5, sqrt(log(fsize)));
      }
      if (speedX>0) {
        triangle(cx - sw/2, cy, cx - sw, cy + sh/2, cx - sw, cy - sh/2);
        fill(#000000);
        circle(cx + sw /4, cy - sh/5, sqrt(log(fsize)));
      }
      if (hunger<0) {
        perish();
      }
    }
    }}
  void checkEat(Goldfish other) {
    if (fsize > other.fsize && collisionCheck(other) && other.isAlive) {
      other.die();
      fsize += other.fsize;
      hunger += log(other.fsize);
      sw = sqrt(fsize/ratio/PI);
      sh = sqrt(fsize/ratio/PI)*ratio;
    }
  }
  boolean collisionCheck(Goldfish other) {
    if (other == this) {
      return false;
    } else {
      return(dist(this.cx, this.cy, other.cx, other.cy)
        <= (this.sw/2 + other.sw/2));
    }
  }//collisionCheck
  void die() {
    isAlive = !isAlive;
  }
  void perish() {
    isAlive = !isAlive;
    perished = true;
  }
}
