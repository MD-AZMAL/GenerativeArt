class Dot {
  PVector pos;
  PVector neighbour;

  Dot(PVector p, PVector n) {
    pos = p;
    neighbour = n;
  }

  void display() {

    stroke(0, 0, 0, 60);
    float col = random(200, 255);
    fill(col, 0, 0, 40);
    strokeWeight(0.1);
    ellipseMode(RADIUS);
    ellipse((pos.x + neighbour.x)/2, (pos.y + neighbour.y)/2, this.distance(neighbour.x, neighbour.y)/2, this.distance(neighbour.x, neighbour.y)/2);
    strokeWeight(0.8);
    stroke(col, 0, 0, 60);
    line(pos.x, pos.y, neighbour.x, neighbour.y);
  }

  float distance(float x, float y) {
    return (float)Math.sqrt(Math.pow(x - pos.x, 2) + Math.pow(y - pos.y, 2));
  }
}
