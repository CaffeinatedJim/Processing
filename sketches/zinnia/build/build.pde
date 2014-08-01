int a = 0;
int c = 100;
int time = 50;
float r = 100;
float duration = 100;

color[] palette = {#ff00ff,#ff0000,#ff007f,#ff7f00,#ffff00,#7fff00,#00ff00,#00ff7f,#00ffff,#007fff,#0000ff,#7f00ff};

void setup() {
  size(600,600);
  smooth(8);
  strokeWeight(2);
  background(#000000);
}

void draw() {

  if (a < palette.length) {

    fill(palette[11],5);

    if (a > 0) {
      fill(palette[a-1],5);
    }

    noStroke();
    ellipse(width/2, height/2, c+r, c+r);

    c++;

    translate(width/2, height/2);
    rotate(r);

    fill(palette[a],50);
    stroke(#FFFFFF);

    ellipse(100, 100, r, 200);
    
    r = r + .25;

    if (time < duration) time++;

    if (r > 150) {
      r = 100;
    }

    if (c > 304) {
      c = 100;
      a++;
    }

  }
  
  else {
    a = 0;
  }

  //if (frameCount % 20 == 0 && frameCount < 1021) saveFrame("render/zinnia-####.gif");

}