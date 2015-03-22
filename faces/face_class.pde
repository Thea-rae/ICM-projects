class Face {
  int x, y, scale, eyes, mouth, arms, legs;
  Face() {
    eyes =4;
    mouth =10;
    arms =1;
  }

  void display(int _x, int _y, int _scale) {
    background(0);
    x=_x;//location
    y=_y;//location
    scale = _scale; //size of the stick figure
    noFill();
    stroke(255);
    strokeWeight(3);
    ellipseMode(CENTER);
    ellipse(x, y, scale, scale);//head
    ellipse(x+scale/4, y-scale/4, scale/eyes, scale/eyes);//right eye
    ellipse(x-scale/4, y-scale/4, scale/eyes, scale/eyes);//left eye
    line(x-scale/mouth, y+scale/7, x+scale/mouth, y+scale/7);//moouth
    line(x, y+scale/2, x, y+scale*2);//body
    line(x, y+scale, x+scale/2, y+scale);//right upper arm
    line(x+scale/2, y+scale, x+scale/arms, y+scale/arms);//lower right arm
    line(x, y+scale, x-scale/2, y+scale);//left upper arm
    line(x-scale/2, y+scale, x-scale/arms, y+scale/arms);
    line(x, y+scale*2, x+scale/4, y+scale*2);//right hip
    line(x, y+scale*2, x-scale/4, y+scale*2);//left hip
    line(x+scale/4, y+scale*2, x+scale/4, y+scale*3);//right leg
    line(x-scale/4, y+scale*2, x-scale/4, y+scale*3); //left leg
  }

  void expression(int chance) {
    if (chance == 0) {
      eyes = 8;
      mouth = 5;
      arms = 2;
    } else if (chance ==1) {
      eyes = 14;
      mouth = 2;
      arms= 80;
    } else if (chance == 2) {
      eyes = 2;
      mouth = 20;
      arms = 3;
    } else if (chance == 3) {
      eyes=6;
      mouth = 10;
      arms = 1;
    }
  }
}
