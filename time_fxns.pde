
// digital clock text ------------------------------------------

// displays white text as time in center of screensaver
void drawTime() {
  pushStyle();
  textSize(60);
  fill(white);
  textAlign(CENTER);
  text(displayHour + ":" + changeDisplayMinute(minute()) + " " + amOrPm(hourTime), width/2, height/4); 
  popStyle();
}

// catches edge cases like displaying 0 as 12 Am/Pm
int changeDisplayHour() {
  if (hourTime == 0 || hourTime == 12) {
    return 12;
  } else {
    return (int)(hourTime % 12.0);
  }
}

// catches edge cases like displaying 0 as :00 , or 3 as :03
String changeDisplayMinute(int min) {
  if (min >= 0 && min <= 9) {
    return "0" + min;
  } else {
    return "" + min;
  }
}

// determines if the given time is Am or Pm
String amOrPm(int hr) {
  if (hr >= 0 && hr < 12) {
    return "AM";
  } else {
    return "PM";
  }
}

// draws the date in month, day, year format
void drawDate() {
  pushStyle();
  textSize(28);
  fill(white);
  textAlign(CENTER);
  text(translateMonth(month()) + " " + day() + ", " + year(), width/2, height/3); 
  popStyle();
}

// months are converted to their names (ex: 1 -> January)
String translateMonth(int month) {
  if (month == 1) {
    return "January";
  } else if (month == 2) {
    return "February";
  } else if (month == 3) {
    return "March";
  } else if (month == 4) {
    return "April";
  } else if (month == 5) {
    return "May";
  } else if (month == 6) {
    return "June";
  } else if (month == 7) {
    return "July";
  } else if (month == 8) {
    return "August";
  } else if (month == 9) {
    return "September";
  } else if (month == 10) {
    return "October";
  } else if (month == 11) {
    return "November";
  } else if (month == 12) {
    return "December";
  } else {
    return "Invalid month";
  }
}