
ArrayList<Dot> dots;
float dist;
float tmp;
Dot min;
int range;

void setup() {
  size(600, 600); 
  dots = new ArrayList<Dot>();
  min = null;
  range = 50;

  randomise();
}

void draw() {
  background(#ffffff);
  for (Dot d : dots) {
    d.display();
  }
}

void addDot(float x, float y) {
  PVector P = new PVector(x, y);
  PVector neighbour = new PVector(P.x, P.y);
  float min = 9999;
  float tmp;

  for (Dot d : dots) {
    tmp = d.distance(P.x, P.y);
    if (tmp < min) {
      min = tmp;
      neighbour.x = d.pos.x;
      neighbour.y = d.pos.y;
    }
  }

  dots.add(new Dot(P, neighbour));
}

void mouseClicked() {
  addDot(mouseX, mouseY);
}

void keyPressed() {
  if (key == 'r' || key == 'R')
    randomise();
}


void randomise() {
  dots = new ArrayList<Dot>();
  for (int i = 0; i < range; i++) {
    addDot(random(600), random(600));
  }
}
