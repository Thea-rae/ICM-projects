ArrayList<Dot> dots;
float dotsize;

void setup() {
  size(displayWidth, displayHeight/4);
  background(0);
  dots = new ArrayList<Dot>();
  dots.add(new Dot(dotsize));
  dotsize = random(.05,3);
}

void draw() {
  for (int i = dots.size ()-1; i>=0; i--) {
    Dot dot = dots.get(i);
    dot.display();
    dot.traverse(random(.5,3));
  }
}

void mousePressed() {
  dots.add(new Dot(dotsize));
  for (int i = dots.size ()-1; i>=0; i--) {
    Dot dot = dots.get(i);
    dot.colorchange();
  }
}
