Face faces = new Face();

void setup(){
  size(600,600);
}

void draw(){
 faces.display(200,100,30);
}

void mousePressed(){
  faces.expression(int (random(0,4)));
}
