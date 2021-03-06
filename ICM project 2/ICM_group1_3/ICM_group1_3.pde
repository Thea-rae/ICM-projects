float  rectx, recty, sqsize, sq2side, rectmovex, rectmovey,sqxbeginright, sqxendright;
float sqxbegin, sqxend, sqybegin, sqyend, sqbegin, sqend, h, s, b, H, S, B,Hn,Sn,Bn;
float mx, my, rn, gn, bn, xoff, xoffset, sqxbeginleft, sqxendleft, sq2size;

void setup() {
  size (900, 300);
  
  my =0.0;
  mx =0.0;
  rectx=450;
  recty=150;
  xoffset=275;
  sqsize=150;
  sq2side=150;
  sqxbegin=375;
  sqxend=525;
  sqybegin=75;
  sqyend =225;
  rectmovex=rectx+xoffset;
  rectmovey=recty;
  sqxbeginleft= sqxbegin-xoffset;
  sqxendleft= sqxend-xoffset;
  sqxbeginright = sqxbegin+xoffset;
  sqxendright = sqxend+xoffset;
  sq2size =150;
  rn=1;
  gn=1;
  bn=1;
}

void draw() {
  background(154, 81, 236);
  xoff = xoff+.05; //color noise

  noStroke();
  smooth();
  fill(100*rn,50*gn,70*b); //first square color 
  rectMode(CENTER);
  //first rect only changes colors when pressed
  rect(rectx-xoffset, recty, sqsize, sqsize);

  //second rect changes colors and expands when pressed
  fill(h, s, b);//not actually hsb mode
  rect(rectx, recty, sq2side, sq2side);

  //third rect expands, changes colors, and follows the mouse/removes cursor
  fill(H, S, B);//not actually hsb mode
  rect(rectmovex, rectmovey, sq2size, sq2size);

  if ((mx >=sqxbeginleft) && (mx<=sqxendleft) && (my>=sqybegin) && (my<=sqyend)) {
    //then change the colors of the square
  rn = noise(xoff)*2;//changed to 30
  gn= noise(xoff)*6; 
  bn= noise(xoff)*4; 
}

  //this will make the second square expand and reset
  if ((mx >=sqxbegin) && (mx<=sqxend) && (my>=sqybegin) && (my<=sqyend)) {

    sq2side=sq2side+1; //square grows
    if (sq2side > 200) { //square reset
      sq2side=150;
    }
  }

  //this will change the thrid square to follow the mouse & remove the cursor.
  if ((mx >=sqxbeginright) && (mx<=sqxendright) && (my>=sqybegin) && (my<=sqyend)) {
    Hn = noise(xoff)*2;//changed to 30
    Sn= noise(xoff)*6; 
    Bn= noise(xoff)*4; 
    
    H=Hn*30;
    S=Sn*60;
    B=bn*90;
    
    rectmovex=mouseX;
    rectmovey=mouseY;  
    noCursor(); 
    sq2size=sq2size+1; //square grows
    if (sq2size > 200) { //square reset
      sq2size=150;}
   
  }
}


void mousePressed() {
  my=mouseY;
  mx=mouseX;
}

