class Star {
  float x;
  float y;
  float z;
  
  float pz;
  
  //Star constructor
  Star() {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    pz = z;
  }
  
  void update() {
    //updates the star z position in space 
    z = z - speed;
    //verifies if the star is offscreen and reset it
    if (z < 1) {
      z = width;
      x = random(-width, width);
      y = random(-height, height);
      pz = z;
    }
  }
  
  void show() {
    //set the star color as white
    fill(255);
    
    //map the star position
    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, height);
    
    //map the stars previous position  
    float px = map(x / pz, 0, 1, 0, width);
    float py = map(y / pz, 0, 1, 0, height);
    
    //refresh the z position
    pz = z;
    
    //draw the star
    stroke(255);
    line(px, py, sx, sy);
  }
}