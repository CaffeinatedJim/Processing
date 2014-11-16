void setup() {
    size(1280, 720, P3D);
    background(#000000);
    smooth(8);
    noFill();
    strokeWeight(1);
}

color[] palette = {
  #1C0021,
  #240047,#240047,#240047,
  #1C3166,#1C3166,#1C3166,
  #00A9D4,
  #40FFDC
};

int a = 0;

void draw() {

        pushMatrix();
        int paletteRandom = int(random(palette.length));
            translate(width/2,height/2);
            rotate(a);

            stroke(#FFFFFF);
            line(0, height/2, width, height/2);
            stroke(#40FFDC);
            ellipse(a,a,width, height/2);
        popMatrix();

        a = a + 1;


    if (a > height) {
        a = 0;
        background(#000000);
    }

    if (frameCount<721) saveFrame("../render/0004-####.png");

}