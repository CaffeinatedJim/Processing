/*
void setup() {
	size(1280, 720);
}

void draw() {
	for (int i = 0; i < height; i++) {
		background(#111111);
		stroke(#FFFFFF);
		fill(#FFFFFF, 100);

		if (i < height) {  
			ellipse(i, i, 40, 40);
	  	}

	  	if (i < width) {  
			ellipse(i, i, 40, 40);
	  	}

	}
}
*/

float theta = 0.0;

void setup() {
  size(1280,720);
  smooth();
}


void draw() {
  background(#000000);
  
  // The output of the sin() function oscillates smoothly between -1 and 1. 
  // By adding 1 we get values between 0 and 2. 
  // By multiplying by 100, we get values between 0 and 200 which can be used as the ellipse's x location.
  float x = (sin(theta) + .1) * width/2; 
  float x2 = (sin(theta) + .2) * width/2;
  float x3 = (sin(theta) + .3) * width/2;
  float x4 = (sin(theta) + .4) * width/2;
  float x5 = (sin(theta) + .5) * width/2;
  float x6 = (sin(theta) + .6) * width/2;
  float x7 = (sin(theta) + .7) * width/2;
  float x8 = (sin(theta) + .8) * width/2;
  float x9 = (sin(theta) + .9) * width/2;
  
  // We can also use Processing's "map()" function to achieve the same results
  // http://processing.org/reference/map_.html
  // float x = map(sin(theta),-1,1,0,width);

  // With each cycle, increment theta
  theta += 0.05;
  
  // Draw the ellipse at the value produced by sine
  fill(#FFFFFF, 150);
  stroke(#FFFFFF);
  strokeWeight(4);
  ellipse(x,height - 40,40,40);
  ellipse(x2,height - 120,40,40);
  ellipse(x3,height - 200,40,40);
  ellipse(x4,height - 280,40,40);
  ellipse(x5,height - 360,40,40);
  ellipse(x6,height - 440,40,40);
  ellipse(x7,height - 520,40,40);
  ellipse(x8,height - 600,40,40);
  ellipse(x9,height - 680,40,40);
}









