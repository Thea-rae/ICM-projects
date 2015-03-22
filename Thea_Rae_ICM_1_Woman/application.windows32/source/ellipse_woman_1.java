import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class ellipse_woman_1 extends PApplet {

public void setup(){
  size(600,800);
  background (140);
  smooth();
  line(0,200,600,200);
  line(100,210,600,210);
  line(350,220,600,220);
 
  strokeWeight(.25f);
  stroke(100);
  fill(100);
  
  //form
  ellipse(350,230,320,320);
  ellipse(250,600,450,450);
  
  fill(255,30);
  stroke(225);
 
  //body
  ellipse(360,170,160,160);
  ellipse(420,260,160,160);
  ellipse(320,220,70,70);
  ellipse(360,240,40,40);
  ellipse(370,290,70,70);
  
  //legs
  ellipse(280,360,270,270);
   ellipse(150,350,40,40);
  
  //butt
  ellipse(430,330,110,110);
  ellipse(400,340,120,120);
  
  //skull
  ellipse(230,130,130,130);
  
  //arms
  ellipse(300,180,190,190);
  ellipse(230,345,170,170);
  
  stroke(255);
 
  //shoulders
  ellipse(350,80,60,60);
  ellipse(300,120,70,70);
  
  //skull detail
  ellipse(200,140,70,70);
  
  //arm joints
  ellipse(280,275,30,30);
  ellipse(180,400,20,20);
  
  //feet
  ellipse(460,400,40,40);
  ellipse(425,420,45,45);
  ellipse(470,440,30,30);
  ellipse(455,470,35,35);
  
  
  //hand
  ellipse(160,400,40,40);
  
  //spine
  strokeWeight(.5f);
  stroke(255);
  ellipse(300,70,5,5);
  ellipse(340,65,5,5);
  ellipse(380,78,5,5);
  ellipse(415,110,5,5);
  ellipse(440,150,5,5);
  ellipse(450,200,5,5);
  ellipse(460,250,5,5);
  ellipse(455,300,5,5);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ellipse_woman_1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
