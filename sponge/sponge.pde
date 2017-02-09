/*
  Sponge Fractal
  creates a Box that divides itself on click
*/

ArrayList<Box> sponge;
float a = 0;

//Setup function
void setup() {
  //set environment to 400x400 on 3D space
  size(400, 400, P3D);
  //initialize the sponge with one box
  sponge = new ArrayList<Box>();
  sponge.add(new Box(0,0,0,200));
}

//At a mouse click event divide the box
void mousePressed() {
  ArrayList<Box> next = new ArrayList<Box>();
  for (Box b : sponge) {
    //calls the generate function that divides the box
    next.addAll(b.generate());
  }
  sponge = next;
}

//Draw function
void draw() {
  //fill the background with a color
  background(51);
  //enable lights to the environment
  lights();
  //translate the initial space point
  translate(width/2, height/2);
  //rotate the space on x, y, and z axis
  rotateX(a);
  rotateY(a*0.4);
  rotateZ(a*0.01);
  //draw each box
  for (Box b : sponge) {
    b.show();
  }
  a += 0.01;
}