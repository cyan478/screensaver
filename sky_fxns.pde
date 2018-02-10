
//colors of the sky -------------------------------------

//day
color ivory = #f9fceb;
color dewBlue = #91b3bc;
color calmBlue = #82b1c4;
color rainBlue = #5b7d87;
color blue = color(118, 172, 227);

// orangy -> blue for transition to sunset

//sunset
color yellow = #5dbcd2;
color lightOrangy = #feb47b;
color orangy = #ff7e5f;
color darkOrangy = #5dbcd2;
color tropicalPink = #f5aB99;
color paradise = #765285;

// order: nightfall (eventually), paradise, tropical pink, yellow, lightOrangy, orangy, darkOrangy

//night
color acai = #4c4c5d;
color creosote = #2e323c;
color nightfall = #351c4d;


// sky palettes 

void drawSky(float t) {

  // 12 AM - 5 AM --------------------------------------------------------------- black
  if (t >= 0 && t < 5) {
    sky(creosote, creosote);
  }


  // 5 AM - 6 AM ---------------------------------------------------------------- black -> lightorange
  if (t >= 5 && t < 6) {
    sky(creosote, lightOrangy);
  }

  // 6 AM - 7 AM ---------------------------------------------------------------- lightblue -> lightorange
  if (t >= 6 && t < 7) {
    sky(dewBlue, lightOrangy);
  }

  // 7 AM - 9 AM ---------------------------------------------------------------- white -> lightblue
  if (t >= 7 && t < 9) {
    sky(ivory, dewBlue);
  }

  // 9 AM - 12 PM --------------------------------------------------------------- lightblue
  if (t >= 9 && t < 12) {
    sky(calmBlue, dewBlue);
  }

  // 12 PM - 5 PM --------------------------------------------------------------- skyblue
  if (t >= 12 && t < 17) {
    sky(calmBlue, calmBlue);
  }

  // 5 PM - 6 PM ---------------------------------------------------------------- pinkpurple -> skyblue
  if (t >= 17 && t < 18) {
    sky(tropicalPink, calmBlue);
  }

  // 6 PM - 7 PM ---------------------------------------------------------------- orange -> pinkpurple
  if (t >= 18 && t < 19) {
    sky(lightOrangy, paradise);
  }

  // 7 PM - 8 PM ---------------------------------------------------------------- navy -> darkorange
  if (t >= 19 && t < 20) {
    sky(acai, lightOrangy);
  }

  // 8 PM - 10 PM --------------------------------------------------------------- fading black
  if (t >= 20 && t < 22) {
    sky(nightfall, acai);
  }

  // 10 PM - 12 AM -------------------------------------------------------------- black
  if (t >= 22 && t < 24) {
    sky(creosote, nightfall);
  }
}

void sky(color top, color bottom) {
  pushStyle();
  noFill();
  int end_Y_COORD = height; // the y coord where the gradient will end
  for (int i = 0; i < end_Y_COORD; i++) { 
    float inter = i / (end_Y_COORD * 1.0);
    color c = lerpColor(top, bottom, inter);
    stroke(c);
    line(0, i, width, i);
  }
  popStyle();
}