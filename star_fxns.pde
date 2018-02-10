
// stars --------------------------------------------------------------------------

Star[] makeStars() {
  int numStars = (int)random(2000, 2500);

  Star[] starArr = new Star[numStars]; // array to store created buildings

  for (int i = 0; i < starArr.length; i++) {
    starArr[i] = makeAStar();
  }
  return starArr;
}

Star makeAStar() {
  float maxRadius = 0.0025 * width;
  float minRadius = 0.00025 * width;

  float maxY = height;
  float minY = 0; 

  float maxIllumin = 255; // opacity of star
  float minIllumin = 150;

  int randomX = (int)random(0, width);
  int randomY = (int)random(minY, maxY);
  float randomRadius = random(minRadius, maxRadius); 
  float randomIllumin = random(minIllumin, maxIllumin);

  return new Star(randomX, randomY, randomRadius, randomIllumin);
}

Star[] twinkleStars(Star[] starArr) { // return updated starArray for twinkling effects

  int goDarker = 30; // chaning opacity values by 2 at a time 
  int goLighter = -30;

  for (int i = 0; i < starArr.length; i++) {
    Star currentStar = starArr[i];

    int changeIllumin = (int) random(0, 2);

    if (currentStar.illumin == 255) {
      if (changeIllumin == 0) { // 50% chance
        Star s = new Star(currentStar.x, currentStar.y, currentStar.r, currentStar.illumin + goLighter); // increase transparency
        s.render();
        starArr[i] = s;
      } else {
        Star s = new Star(currentStar.x, currentStar.y, currentStar.r, currentStar.illumin); // transparency stays the same
        s.render();
        starArr[i] = s;
      }
    } else {
      if (changeIllumin == 0) { // 50% chance
        Star s = new Star(currentStar.x, currentStar.y, currentStar.r, currentStar.illumin + goLighter); // increase transparency
        s.render(); 
        starArr[i] = s;
      } else {
        Star s = new Star(currentStar.x, currentStar.y, currentStar.r, currentStar.illumin + goDarker); // decrease transparency
        s.render();
        starArr[i] = s;
      }
    }
  }
  return starArr;
}