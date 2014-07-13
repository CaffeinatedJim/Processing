void setup() {
  size(600, 600);
  background(#000000);
  smooth();
  rectMode(CENTER);
  stroke(#40FFDC);
  strokeWeight(a);
  frameRate(30);
}

color[] palette = {
  #1C0021,
  #240047,#240047,#240047,
  #1C3166,#1C3166,#1C3166,
  #00A9D4,
  #40FFDC
};

int a = 40;
int b = 1;
int dist = 10;
float angle = random(0,360);
 
void draw() {
  int m = frameCount * dist;

  if (m < width + a) {
    background(#000000);
    int paletteRandom = int(random(palette.length));
    fill(palette[paletteRandom],200);

    translate(width/2, height/2);
    rotate(m); 

    if (m < width/4) {
      rect(0, 0, m, m, 5);
    }

    else {
      rect(0, 0, m, m, 50);
    }

  }

  else {frameCount = 0;}

  // Export PNG for Video:
  saveFrame("render/spinning-atom-####.gif");
}