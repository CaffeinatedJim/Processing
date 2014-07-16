void setup() {
  size(600, 600);
  smooth();
  ellipseMode(CENTER);
  noFill();
  stroke(#40FFDC);
  strokeWeight(a);
  frameRate(30);
}

int a = 40;
 
void draw() {
  int m = millis() % 360;
  background(#000000);
  translate(width/2, height/2);
  rotate(radians(m));
  ellipse(0, 0, 500, 125);
}