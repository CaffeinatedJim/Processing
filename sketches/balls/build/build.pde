import penner.easing.*;

int time = 100;
float r = 100;
float duration = 200;

color[] palette = {#ff00ff,#ff0000,#ff007f,#ff7f00,#ffff00,#7fff00,#00ff00,#00ff7f,#00ffff,#007fff,#0000ff,#7f00ff};

void setup() {
  size(600,600);
  stroke(#FFFFFF);
  smooth(8);
  strokeWeight(5);
}

void draw() {

  int paletteRandom = int(random(palette.length));
  background(#000000,100);
  fill(palette[paletteRandom],200);

  translate(width/2, height/2);
  rotate(r);

  ellipse(
    Linear.easeIn    (time, 75, 75, duration),
    Linear.easeIn    (time, 75, 75, duration),
    Linear.easeIn    (time, 75, 75, duration),
    Linear.easeIn    (time, 75, 75, duration)
  );

  r = r + .25;

  if (time < duration) time++;

  //if (frameCount < 51) saveFrame("render/balls-####.gif");

}