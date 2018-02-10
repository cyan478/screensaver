class Building {

  float x;
  float h;
  float w;
  color clr;

  Building(float xVal, float he, float wi, color co) {
    this.x = xVal;
    this.h = he;
    this.w = wi;
    this.clr = co;
  }

  float getX() {
    return x;
  }

  float getHeight() {
    return h;
  }

  float getWidth() {
    return w;
  }

  public String toString() {
    return 
      "Building X: " + x + 
      "\nBuilding Height: " + h + 
      "\nBuilding Width: " + w + 
      "\nBuilding Color: " + clr + 
      "\n-----\n";
  }

}