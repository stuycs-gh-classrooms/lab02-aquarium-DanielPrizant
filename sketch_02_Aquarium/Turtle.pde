class Turtle extends Animal {
  Turtle(int x, int y) {
    super(x, y);
    speedX = random(.25, .75) * int(pow(-1, int(random(0, 2))));
    speedY = 0;
    sw = int(random(60, 80));
    sh = int(random(50, 55));
  }
  void display() {
    fill(0, 48, 32);
    arc(pos.x + sw/3, pos.y + sh/2, sw/1.5, sh, PI, 2*PI, CHORD);
    fill(0, 200, 0);
    rect(pos.x, pos.y + sh/2, sw/6, sh/2);
    rect(pos.x + sw/2, pos.y + sh/2, sw/6, sh/2);
    if (speedX>0) {
      circle(pos.x + 5 * sw/6, pos.y + sh/2, sw/3);
    }
    if (speedX<0) {
      circle(pos.x - sw/6, pos.y + sh/2, sw/3);
    }
  }
  boolean collisionCheck(Goldfish other) {
    return (dist(pos.x + 5 * sw/6, pos.y + sh/2, other.cx, other.cy)<other.sw/4);
  }
  void eat(Goldfish other) {
    if (other.perished && !other.STOP && collisionCheck(other)) {
      other.STOP = true;
      sh += log(other.fsize) * ratio;
      sw += log(other.fsize);
    }
  }
}
