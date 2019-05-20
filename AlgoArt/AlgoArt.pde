float x = 0;
float y = 0;
float step = 20;

void setup() {
  size(600, 400);
}

void draw() {
  makePiece();
}

void makePiece() {
  if (random(1) > .5) {
    line(x + (.5 * step), y, x + (.5 * step), y + step);
  } else {
    line(x, y + (.5*step), x + step, y + (.5*step));
  }
  x += step;
  if (x > width) {
    x = ((y / step)%1) * step;
    y += (step / 2);
  }
  if (y > height) {
    noLoop();
  }
}