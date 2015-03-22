class Dot { //<>//
float x, y,ybegin, diameter, ty;


  Dot(float size){
   diameter= size;
 background(0);
  }
  
    void start(float meep){
      x= 0;
     ybegin= random(0,height);
     y=ybegin;
     ty =meep;
    }
  
    void traverse(){
      
      y =map(noise(ty),0,1,100,0)+ybegin;
      x++;
      ty+=0.01;
    }
      
  
    void display(float rcolor,float gcolor,float bcolor){
      
      noStroke();
      fill(rcolor, gcolor, bcolor);
      ellipse(x,y,diameter,diameter);
      }
      
}
