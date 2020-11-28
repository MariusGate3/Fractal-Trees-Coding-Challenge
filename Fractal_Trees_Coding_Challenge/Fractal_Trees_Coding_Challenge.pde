import controlP5.*;

float angle = TWO_PI / 4;
float lenLimit = 4;

ControlP5 cp5;


void setup() {

  size(1000, 1000);

  cp5 = new ControlP5(this);

  cp5.addSlider("angle").setPosition(0, 0).setRange(0, TWO_PI);
  cp5.addSlider("lenLimit").setPosition(0, 10).setRange(1, 300);
}


void draw() {
  pushMatrix();
  background(51);
  stroke(255);
  translate(500, height);
  branch(350);
  popMatrix();
}
