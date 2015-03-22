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
    ty=meep;
    acceleration.y = map(noise(ty),0,1,-.75,1);
    acceleration.x =1;
    velocity.add(acceleration);
    velocity.limit(max);
    location.add(velocity);
    location.y=constrain(location.y,0, height);
    location.x=location.x %width;
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
