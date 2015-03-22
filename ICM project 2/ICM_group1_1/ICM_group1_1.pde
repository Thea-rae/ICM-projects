float rectR, rectG,rectB, rectx, recty, sqsize, rectmovex, rectmovey;
float sq1xbegin, sq1xend, sq1ybegin, sq1yend;
float sq2xbegin, sq2xend, sq2ybegin, sq2yend;
float sq3xbegin, sq3xend, sq3ybegin, sq3yend; 
float mx, my;

void setup(){
  size (900,300);
  background(154,81,236);
  my =0.0;
  mx =0.0;
}

void draw(){
  noStroke();
  smooth();
  fill(rectR,rectG,rectB);
  rect(rectx, recty, sqsize,sqsize);
  
  rect(rectx, recty, sqsize,sqsize);
  
  rect(rectmovex, rectmovey, sqsize,sqsize);
  
  if((mx >=sq1xbegin) && (mx<=sq1xend) && (my>=sq1ybegin) && (my<=sq1yend)){
    //then change the colors of the square 
  }
  if((mx >=sq2xbegin) && (mx<=sq2xend) && (my>=sq2ybegin) && (my<=sq2yend)){
    //square grows and shrinks
  }
    if((mx >=sq3xbegin) && (mx<=sq3xend) && (my>=sq3ybegin) && (my<=sq3yend)){
    //follows the mouse
    
  }
}


void mousePressed(){
  my=mouseY;
  mx=mouseX;
}
