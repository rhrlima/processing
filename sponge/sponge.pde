ArrayList<Box> sponge;
float a = 0;
void setup() {
  size(400, 400, P3D);  
  sponge = new ArrayList<Box>();
  sponge.add(new Box(0,0,0,200));
}

void mousePressed() {
  ArrayList<Box> next = new ArrayList<Box>();
  for (Box b : sponge) {
    next.addAll(b.generate());
  }
  sponge = next;
}

void draw() {
  background(51);
  lights();
  
  translate(width/2, height/2);
  rotateX(a);
  rotateY(a*0.4);
  rotateZ(a*0.01);
  for (Box b : sponge) {
    b.show();
  }
  a += 0.01;
}