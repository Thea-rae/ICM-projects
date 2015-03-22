ArrayList<Dot> dots;
float dotsize;
import processing.serial.*;
int lf = 10;    // Linefeed in ASCII
Serial myPort;  // The serial port:
String myString = null;
float ax,az,ay;


void setup() {
  size(displayWidth, displayHeight/4);
  background(0);
  dots = new ArrayList<Dot>();
  dotsize = random(.05, 3);
  dots.add(new Dot(dotsize));
  println(Serial.list());
  myPort = new Serial(this, Serial.list()[5], 9600);
}


void draw() {
  for (int i = dots.size ()-1; i>=0; i--) {
    Dot dot = dots.get(i);
    dot.display();
    dot.traverse(ax);
  }
  while (myPort.available () > 0) {
    myString = myPort.readStringUntil(lf);
    if (myString != null) {
    }
  }
  int[] nums = int(split(myString, ','));
  ax =map(nums[0],-17000,17000,-100,100);
  ay = nums[1];
  az = nums[2];

  if (az >= 100 && az<=110) {
    dotsize = random(.05, 3);
    dots.add(new Dot(dotsize));
    for (int i = dots.size ()-1; i>=0; i--) {
      Dot dot = dots.get(i);
      dot.colorchange();
    }
  }
  println(ax, az, ay);
}

void mousePressed() {
}
