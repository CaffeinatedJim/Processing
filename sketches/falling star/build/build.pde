void setup() {
	size(600, 600);
	frameRate(30);
	smooth();
	background(#000000);
}

color[] palette = {
  #1C0021,
  #240047,#240047,#240047,
  #1C3166,#1C3166,#1C3166,
  #00A9D4,
  #40FFDC
};

int h = 0;
int size = 20;

void draw() {

	// Random Number up to Width -- Convert to int
	float r = random(width);
	int w = int(r);

	// Increase Height
	h = h + size/2;

	for (int i = 0; i < width+size; i = i + size) {

		// Color -- Blue
		int paletteRandom = int(random(palette.length));
		fill(palette[paletteRandom],200);
		noStroke();

		// Draw
		if (h < height+size) {

			rectMode(CENTER);
			ellipse(i, h, size, size);
		}

		// Reset
		else {
			background(#000000);
			h = 0;
			r = 0;
		}		
	}
}