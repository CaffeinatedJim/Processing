// by dave @ bees & bombs
 
int[][] result;
float t;
 
void setup() {
  setup_();
  result = new int[width*height][3];
}
 
void draw() {
 
  if (!recording) {
    t = mouseX*1.0/width;
    draw_();
  } else {
    for (int i=0; i<width*height; i++)
      for (int a=0; a<3; a++)
        result[i][a] = 0;
 
    for (int sa=0; sa<samplesPerFrame; sa++) {
      t = map(frameCount-1 + sa*shutterAngle/samplesPerFrame, 0, numFrames, 0, 1);
      draw_();
      loadPixels();
      for (int i=0; i<pixels.length; i++) {
        result[i][0] += pixels[i] >> 16 & 0xff;
        result[i][1] += pixels[i] >> 8 & 0xff;
        result[i][2] += pixels[i] & 0xff;
      }
    }
 
    loadPixels();
    for (int i=0; i<pixels.length; i++)
      pixels[i] = 0xff << 24 | (result[i][0]/samplesPerFrame) << 16 | 
        (result[i][1]/samplesPerFrame) << 8 | (result[i][2]/samplesPerFrame);
    updatePixels();
 
    saveFrame("f###.gif");
    if (frameCount==numFrames)
      exit();
  }
}
 
//////////////////////////////////////////////////////////////////////////////
 
int samplesPerFrame = 32;
int numFrames = 96;        
float shutterAngle = .6;
 
boolean recording = false;
 
void setup_() {
  size(500, 500, P3D);
  smooth(8);
  perspective(1.14,1,200,4000);
  noFill();
  strokeWeight(1.4);
  stroke(40);
}
 
float r = 270, d, x, th, tt;
int N = 16;
 
void draw_() {
  background(250);
  pushMatrix();
  translate(width/2, height/2, -230);
  rotateY(PI/6 + PI/36*sin(TWO_PI*t));
  for (int i=-1; i<N; i++) {
    tt = (t+i)/float(N);
    if (0 <= tt && tt <= 1) {
      th = PI*tt;
      d = 2*r*sin(th);
      x = r*cos(th);
      pushMatrix();
      translate(0, 0, x);
      ellipse(0, 0, d, d);
      popMatrix();
    }
  }
  popMatrix();
}