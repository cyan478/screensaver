
// keystrokes -------------------------------------------

void listenToKeys() {

  if (keyPressed) {
    if (key == 'q') { // lowercase = AMs
      hourTime = 0;
      displayHour = changeDisplayHour();
    } else if (key == 'w') {
      hourTime = 1;
      displayHour = changeDisplayHour();
    } else if (key == 'e') {
      hourTime = 2;
      displayHour = changeDisplayHour();
    } else if (key == 'r') {
      hourTime = 3;
      displayHour = changeDisplayHour();
    } else if (key == 't') {
      hourTime = 4;
      displayHour = changeDisplayHour();
    } else if (key == 'y') {
      hourTime = 5;
      displayHour = changeDisplayHour();
    } else if (key == 'u') {
      hourTime = 6;
      displayHour = changeDisplayHour();
    } else if (key == 'i') {
      hourTime = 7;
      displayHour = changeDisplayHour();
    } else if (key == 'o') {
      hourTime = 8;
      displayHour = changeDisplayHour();
    } else if (key == 'p') {
      hourTime = 9;
      displayHour = changeDisplayHour();
    } else if (key == 'a') {
      hourTime = 10;
      displayHour = changeDisplayHour();
    } else if (key == 's') {
      hourTime = 11;
      displayHour = changeDisplayHour();
    } else if (key == 'Q') {      // START OF UPPERCASE -> PMs
      hourTime = 12;
      displayHour = changeDisplayHour();
    } else if (key == 'W') {      
      hourTime = 13;
      displayHour = changeDisplayHour();
    } else if (key == 'E') {      
      hourTime = 14;
      displayHour = changeDisplayHour();
    } else if (key == 'R') {      
      hourTime = 15;
      displayHour = changeDisplayHour();
    } else if (key == 'T') {      
      hourTime = 16;
      displayHour = changeDisplayHour();
    } else if (key == 'Y') {      
      hourTime = 17;
      displayHour = changeDisplayHour();
    } else if (key == 'U') {      
      hourTime = 18;
      displayHour = changeDisplayHour();
    } else if (key == 'I') {      
      hourTime = 19;
      displayHour = changeDisplayHour();
    } else if (key == 'O') {      
      hourTime = 20;
      displayHour = changeDisplayHour();
    } else if (key == 'P') {      
      hourTime = 21;
      displayHour = changeDisplayHour();
    } else if (key == 'A') {      
      hourTime = 22;
      displayHour = changeDisplayHour();
    } else if (key == 'S') {      
      hourTime = 23;
      displayHour = changeDisplayHour();
    } else if (key == 'm' || key == 'M') {
      hourTime = hour();
      displayHour = changeDisplayHour();
      println("Going back to the actual time!");
    } else if (key == 'd' || key == 'D') {
      saveFrame("screensaver.png");
      println("Saved screensaver.png!");
    }
  }
}