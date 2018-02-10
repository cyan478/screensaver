// ------------------------------------------------------------------- misc.

// prints coordinates when mouses is clicked within the canvas
// used primarily for testing coordinates during coding
void mousePressed() {
  println("Regular coords: ", mouseX, mouseY);
  println("Based on origin coords: ", mouseX - width/2, mouseY - height/2);
  println("-------------------");
}

// helps visualize and determine center after so many translates / rotates
void drawCenter() {
  pushStyle();
  fill(255, 0, 0);
  ellipse(0, 0, 10, 10);
  popStyle();
}