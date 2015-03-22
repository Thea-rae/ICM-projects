/* I wanted to create a sketch that allows the user to draw lines
that travel accross the screen with their own charaterisitcs. I
used this as an opportunity to explore classes and arrays. I didn't
make it to using more than my handy crutch noise, but I am hoping
to play with physics and applying forces to objects in the comming
weeks. 
*/

Dot[] dots;
int currentdot = 0;
int numdots= 100;
int rcolor, gcolor, bcolor,speed;


void setup(){
  size(displayWidth, displayHeight/4);
  dots = new Dot[numdots];
  for(int i=0; i<numdots; i++){
  dots[i]= new Dot(random(.5,3));
   }
   rcolor=1;
   gcolor=255;
   bcolor=255;
   speed=10;
}

void draw(){

  for(int i=0; i<dots.length; i++){
  dots[i].display(rcolor, gcolor, bcolor);//prettiness factor, duh!
  dots[i].traverse();//speed and noise
   
  }
    
}

void mousePressed(){
  noStroke();
  fill(0, 30);
  rect(0,0, displayWidth, displayHeight/4);
  //add new dots on press
  dots[currentdot].start(random(0,3));
  currentdot++;
  if(currentdot>=numdots){
    currentdot = 0;
  }
  //color change on press
    rcolor=rcolor+speed;
    gcolor=gcolor-speed*2;
    bcolor=bcolor-speed;
    if (rcolor >=250|| rcolor<1){
     speed=-speed;
    }
    
}
  
