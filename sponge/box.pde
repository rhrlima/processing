class Box {
  PVector pos;
  float r;
  
  Box(float x, float y, float z, float r_) {
    pos = new PVector(x, y, z);
    r = r_;
  }
  
  ArrayList<Box> generate() {
    ArrayList<Box> boxes = new ArrayList<Box>();
    for (int i = -1; i < 2; i++) {
      for (int j = -1; j < 2; j++) {
        for (int k = -1; k < 2; k++) {
          int sum = abs(i) + abs(j) + abs(k);
          float newR = r/3;
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
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    box(r);
    popMatrix();
  }
}