/******************************************************
 *   Celine Yan                                        *
 *   yan.ce@husky.neu.edu                              *
 *   Programming Basics | Spring 2018 Section 03       *
 *   assignment_06: "Daylight Screensaver"             *
 *******************************************************/


/*
More information & Instructions:
--------------------------------

This is a time sensitive screensaver. The background sky changes
color depending on the time of the day. There are animated objects* 
that provide a sense of time passing, as well as the digital clock,
which tells the time.

* Clouds by day appear with random velocity; if you don't see clouds,
wait a while and they will start appearing at random Y coordinates
from x = 0 (left border of the screen).

In order to skip to certain times of the day, there are several 
keystrokes that trigger examples to show how the background
would look like at that certain timeframe. This is solely to see
what the screensaver would look like at certain times of the day.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Going horizontally on your keyboard:

'q' to 's' represent the AMs from 12AM -> 11AM ****************
'Q' to 'S' represent the PMs from 12PM -> 11PM 

--> lowercase keys trigger midnight and morning times
--> uppercase keys trigger afternoon, evening, and night times

To go back to your original hour:

'm' or 'M' will change the display

Enjoy!

-----------------

**************** NOTE: 

pressing 's' or 'S' will not trigger saveFrame(), due to consistency
with changing the hour in the program.

rather, pressing 'd' or 'D' will saveFrame() 
* maybe think of it as "Download" ? :)

*/
color black = color(0);
color white = color(255);

// global variables
int hourTime = hour(); // determines hour * can vary based on keystroke triggers
int displayHour = changeDisplayHour(); // changes from universal time -> AM/PM * can vary based on keystroke triggers

Building[] frontBuildings;
Cloud[] clouds;
Star[] stars;



void setup() {
  fullScreen();
  //size(1000, 600);
  stars = makeStars(); // set up clouds
  clouds = makeClouds(); // set up clouds
  frontBuildings = frontBuildings(); // set up black buildings
}

void draw() {
  listenToKeys();
  drawSky(hourTime); // draws sky based on hour
  
  if (hourTime >= 4 && hourTime < 22) { // draws clouds from 4 -> 22 // [4AM -> 10PM)
    clouds = moveClouds(clouds); 
  }
  
  if (hourTime >= 22 || hourTime < 4) { // draws stars from 22 -> 4 // [10PM -> 4AM)
    stars = twinkleStars(stars); 
  }
  
  drawBuildings(frontBuildings);
  
  drawTime();
  drawDate();
}