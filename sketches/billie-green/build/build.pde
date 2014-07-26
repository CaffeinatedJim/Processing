color[] palette = {
	#505857,#505857,#505857,
	#667171,
	#73807f,
	#7f8a87,
	#879695,
	#98a7a3,
	#a7b5b3, 
	#aeb9b1,
	#bbbeb7,
	#b8c3c0,
	#d0cec7,
	#dfdcd4,#dfdcd4,#dfdcd4
};

int o = 12;

void setup() {
	size(600, 600);
	stroke(#505857);
	background(#505857);
	frameRate(6);
	smooth();
}

void draw() {
	for (int w = 0; w < width; w = w + (o * 2)) {
		for (int h = 0; h < height; h = h + o) {
			int paletteRandom = int(random(palette.length));
			fill(palette[paletteRandom],60);
			rect(w, h, o * 2, o);
		}
	}
}