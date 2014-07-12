// Export GIF Part 1
//import gifAnimation.*;
//GifMaker gifExport;

void setup() {
  size(600, 600);
  background(#000000);
  smooth();
  ellipseMode(CENTER);
  rectMode(CENTER);
  noFill();
  strokeWeight(a);
  frameRate(30);

  // Export GIF Part 2
  //gifExport = new GifMaker(this, "render/spinning-atom.gif");
  //gifExport.setRepeat(0); // = loop forever

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

    if (m < width) {
        background(#000000);
        int paletteRandom = int(random(palette.length));
        fill(palette[paletteRandom],200);
        stroke(#40FFDC);

        translate(width/2, height/2);
        rotate(m); 

        if (m < width/4) {
          rect(0, 0, m, m, 5);
        }
        else {
          rect(0, 0, m, m, 50);
        }

    }
    else {
        frameCount = 0;
    }
    
      // Export GIF Part 3
  //if (frameCount < 600) {
  //gifExport.setDelay(4); // = speed of the animated GIF
  //gifExport.addFrame();
  //}
  //if (frameCount>600) gifExport.finish();
}