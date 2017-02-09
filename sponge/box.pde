class Box {
  PVector pos;
  float r;

  //Constructor
  Box(float x, float y, float z, float r_) {
    //Initialize a vector with given values
    pos = new PVector(x, y, z);
    r = r_;
  }

  //Function that divide the box
  ArrayList<Box> generate() {
    ArrayList<Box> boxes = new ArrayList<Box>();
    //goes from -1 to 1 on x, y and z axis to create the boxes
    for (int i = -1; i < 2; i++) {
      for (int j = -1; j < 2; j++) {
        for (int k = -1; k < 2; k++) {
          int sum = abs(i) + abs(j) + abs(k);
          float newR = r/3;
          //verifies if the position has some axis equatl to 0
          //if yes, remove the box from this position
          if (sum > 1) {
            Box b = new Box(pos.x + i * newR, pos.y + j * newR, pos.z + k * newR, newR);
            boxes.add(b);
          }
        }
      }
    }
    return boxes;
  }

  void show() {
    //creates a sub space without manipulate the original
    pushMatrix();
    //translates the space initial point
    translate(pos.x, pos.y, pos.z);
    //draws a box with size r
    box(r);
    //release the sub space
    popMatrix();
  }
}