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

public class build extends PApplet {

int h = 0;

public void setup() {
	size(1280, 720);
	frameRate(60);
	smooth();
	background(0xff000000);
	noLoop();
}

public void draw() {
	translate(width/2, height/2);
	rotate(radians(h*10));
	float r = random(100,255);
	fill(r, 0, 0);
	ellipse(h, h, h, h);
	h = h + 1;
	loop();
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--hide-stop", "build" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}