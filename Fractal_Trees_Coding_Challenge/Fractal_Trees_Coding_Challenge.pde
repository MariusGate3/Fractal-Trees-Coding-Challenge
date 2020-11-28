import controlP5.*;
float treeSize = 300;
float angle = 0.76;
float lenLimit = 1;
float branchLen = 0.67;
float branchSize = 0.67;
float branchThickness = 5;


ControlP5 cp5;


void setup() {

  size(1920, 1080);

  cp5 = new ControlP5(this);

  cp5.addSlider("angle").setPosition(0, 0).setRange(0, TWO_PI);
  cp5.addSlider("lenLimit").setPosition(0, 10).setRange(1, 300);
  cp5.addSlider("treeSize").setPosition(0, 20).setRange(1, 500);
  cp5.addSlider("branchLen").setPosition(0, 30).setRange(0.01, 0.78);
  cp5.addSlider("branchThickness").setPosition(0, 40).setRange(0.01, 10);
  cp5.addSlider("branchSize").setPosition(0, 50).setRange(0.01, 0.78);
}


void draw() {
  pushMatrix();
  background(51);
  stroke(255);
  translate(width/2, height);
  branch(treeSize, branchThickness);
  popMatrix();
}
