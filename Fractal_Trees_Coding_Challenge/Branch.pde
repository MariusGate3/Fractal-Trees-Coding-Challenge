void branch(float len) {

  line(0, 0, 0, -len);
  translate(0, -len);
  if (len > lenLimit) {
    rotate(angle);
    branch(len * 0.67);
    rotate(-angle);
    branch(len * 0.67);
  }
}
