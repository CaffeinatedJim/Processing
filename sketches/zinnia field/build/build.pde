int a = 0;
int c = 100;
float r = 100;
int q = 120;

color[] palette = {#ff00ff,#ff0000,#ff007f,#FFFFFF};

void setup() {
  size(600,600);
  smooth(8);
  strokeWeight(2);
  background(#FFFFFF);
  rectMode(CENTER);
}

void draw() {

  for (int x = 0; x < width; x = x + q) {
    for (int y = 0; y < height; y = y + q) {
      
      // If Palette is less than the length
      if (a < palette.length) {

        // Color and draw the expanding Circle
        // Set Initial Color
        fill(palette[a],5);
        // Then cycle through the array, one behind a
        if (a > 0) {fill(palette[a-1],5);}
        noStroke();
        ellipse(width/2, height/2, c+r, c+r);

        // Rotation
        translate(width/2, height/2);
        rotate(r);

        // The Rotating Circles (Ovals)
        fill(palette[a],100);
        rect(5, 5, 600, 1);
        
        //Increment the First Circle int and the Random float
        c++;
        r = r + .25;

        // Reset the Random
        if (r > 150) {
          r = 100;
        }

        // Reset the First Circle int and Increase the Color Pallet Array
        if (c > 600) {
          c = 100;
          a++;
        }

      }
      
      // If is longer than palette length, reset it.
      else {
        a = 0;
        background(#FFFFFF);
      }

    }
  }

  // Uncomment this to render GIFs
  // saveFrame("render/pink-lines-####.gif");

}