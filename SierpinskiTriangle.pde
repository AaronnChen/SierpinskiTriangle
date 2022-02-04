void setup() {
  size(800, 800);
}

void draw() {
  background(0, 0, 0);
  noFill();
  stroke(0, 255, 205);
  strokeWeight(2);
  sierpinski(mouseX - 300, mouseY + 250, 600);
  stroke(255);
  sierpinski(mouseX - 300, mouseY + 250, 605);
}

void sierpinski(int x, int y, int len) {
  if(len <= 20) {
    triangle(x, y, x + len / 2, y - len, x + len, y);
  } else {
    sierpinski (x, y, len / 2);
    sierpinski (x + len / 2, y, len / 2);
    sierpinski (x + len / 4, y - len / 2, len / 2);
  }
}
