void setup() {
	size(600, 600);
	smooth();
	background(#000000);
	ellipseMode(CENTER);
	noStroke();
}

color[] palette = {
  #1C0021,
  #240047,#240047,#240047,
  #1C3166,#1C3166,#1C3166,
  #00A9D4,
  #40FFDC
};

float a = 40;
float b = 5;
float f = 2;
float d = a - b;

void draw() { 
	for(float x = 0; x < width + a; x = x + a){
		for(float y = 0; y < height + a; y = y + a){
		  	if (f < 32) {
			  	frameRate(f);
			    // Color -- Blue
				int paletteRandom = int(random(palette.length));
				fill(palette[paletteRandom],200);			
				ellipse(x,y,d,d);
			}
			else if (f >= 32) {
				f = 2;
			}
		}
	}

	// Increase Framerate speed
	f++;

	// Export PNG for Video:
	//if (frameCount<30) saveFrame("render/flashing-circles-####.gif");
}