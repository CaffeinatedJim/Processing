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

// Export GIF Part 1
// import gifAnimation.*;
// GifMaker gifExport;

int h = 0;

public void setup() {
	size(1280, 720);
	frameRate(60);
	smooth();
	background(0xff000000);
	noLoop();

	// Export GIF Part 2
	// gifExport = new GifMaker(this, "rope.gif");
	// gifExport.setRepeat(0); // = loop forever
}

public void draw() {
	translate(width/2, height/2);
	rotate(radians(h*10));
	float r = random(100,255);
	fill(r, 0, 0);
	ellipse(h, h, h, h);
	h++;
	loop();

	// Export GIF Part 3
	// if (frameCount % 6 == 0 && frameCount < 240) {
	// gifExport.setDelay(8); // = speed of the animated GIF
	// gifExport.addFrame();
	// }
	// if (frameCount>240) gifExport.finish();

	// Export PNG for Video:
	// if (frameCount<1000) saveFrame("rope-####.png");
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
