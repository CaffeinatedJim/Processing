void setup() {
	size(600, 600);
	background(#000000);
	smooth();
	frameRate(60);
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

void draw() {

	int m = millis();
	int a = 60;
	int n = m % a;

	for(int i = 0; i < width+a; i += a) {
		for(int j = 0; j < height+a; j += a) {

		    int paletteRandom = int(random(palette.length));
			fill(palette[paletteRandom],200);
			ellipse(i, j, n, n);
		}
	}
}