 //<>//
class Dot {
  float diameter, ynoise, ty, max;
  PVector location;
  PVector velocity;
  PVector acceleration;
  int rcolor, gcolor, bcolor, speed;
  

  Dot(float size) {

    location = new PVector(0, random(0, height));
    velocity = new PVector(0, 0);
    acceleration = new PVector(0.01, 0 );
    max= 2;
    diameter = size;
    rcolor=1;
    gcolor=255;
    bcolor=255;
    speed=10;
  }

  void traverse(float meep) {
   /* for(int i = 0; i<width; i++){
    ty=meep;
    acceleration.y = map(noise(ty),0,1,10,0)+location.y;
    acceleration.x = 2+location.x;
    }*/ // I can't get a simular stye of movement out of it yet.
    //I think I need to keep working with the application of forces
    // for a few more days
    velocity.add(acceleration);
    velocity.limit(max);
    location.add(velocity);
  }


  void display() {
    noStroke();
    fill(rcolor, gcolor, bcolor);
    ellipse(location.x, location.y, diameter, diameter);
  }

  void colorchange() {
    rcolor=rcolor+speed;
    gcolor=gcolor-speed*2;
    bcolor=bcolor-speed;
    if (rcolor >=250|| rcolor<1) {
      speed=-speed;
    }
  }
}
