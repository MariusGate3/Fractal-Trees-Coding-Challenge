void branch(float len, float branchThickness) {
  strokeWeight(branchThickness);
  line(0, 0, 0, -len);
  translate(0, -len);
  if (len > lenLimit) {
    pushMatrix();
    rotate(angle);
    branch(len * branchLen, branchThickness * branchSize);
    popMatrix();
    pushMatrix();
    rotate(-angle);
    branch(len * branchLen, branchThickness * branchSize);
   // stroke(random(255), random(0, 255), random(0, 255));
    popMatrix();
  }
}
