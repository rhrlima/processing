/*
  Starfield
  creates a speed travel effect on the space
  drag the mouse along the screen to increase or decrease speed
*/

//Array of stars
Star[] stars = new Star[1500];

float speed;

//setup function
void setup() {
  //set screen size
  size(800, 800);
  //create the stars
  for (int i=0; i<stars.length; i++) {
    stars[i] = new Star();
  }
}

//draw function
void draw() {
  //map the velocity to change along the mouse x position on screen
  speed = map(mouseX, 0, width, 0, 100);
  //set the background color as black
  background(0);
  //translate the space initial point to half the screen size
  translate(width/2, height/2);
  //update and draw each star
  for (int i=0; i<stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
}