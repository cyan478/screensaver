

// clouds --------------------------------------------------------------------------

Cloud[] makeClouds() {
  Cloud[] cloudArr = new Cloud[10]; // array to store created buildings

  for (int i = 0; i < cloudArr.length; i++) {
    cloudArr[i] = makeACloud();
  }
  return cloudArr;
}

Cloud makeACloud() {
  float maxWidth = 3/10.0 * width;
  float minWidth = 2/10.0 * width;

  float maxHeight = 1/10.0 * height;
  float minHeight = 75/1000.0 * height;

  float maxY = height/2;
  float minY = maxHeight + 3/100.0 * height; // so topmost cloud does not touch top border of screen

  float maxVelocity = 1;
  float minVelocity = 0.05;

  int randomY = (int)random(minY, maxY);

  int randomWidth = (int)random(minWidth, maxWidth); 
  int randomHeight = (int)random(minHeight, maxHeight); 

  int widthRadius = randomWidth/2;

  float randomVel = random(minVelocity, maxVelocity);
  
  return new Cloud(0 - widthRadius - random(width/100, width * 2), randomY, randomWidth, randomHeight, randomVel);
}

Cloud[] moveClouds(Cloud[] cloudArr) { // return updated cloudArray when a cloud finishes across screen
  for (int i = 0; i < cloudArr.length; i++) {
    Cloud currentCloud = cloudArr[i];
    if ( currentCloud.x - currentCloud.w/2 > width) {
      Cloud c = makeACloud();
      c.render();  
      cloudArr[i] = c;
    } else {
      Cloud c = new Cloud(currentCloud.x + currentCloud.velocity, currentCloud.y, currentCloud.w, currentCloud.h, currentCloud.velocity);
      c.render();  
      cloudArr[i] = c;
    }
  }
  return cloudArr;
}