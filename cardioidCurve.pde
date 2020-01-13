
void setup() {
  fullScreen();
}


void draw() {
  background(0);
  stroke(255);
  strokeWeight(0.5);
  translate(width/2, height/2);
  float r = height/3;
  noFill();
  ellipse(0,0,r*2,r*2);
  float factor = 2;
  int total = 100;

  for (float i = 0; i < total; i++) {
    float angle = map(i, 0, total, 0, TWO_PI);
    PVector pv1 = new PVector(r*cos(angle), r*sin(angle));
    PVector pv2 = new PVector(r*cos(angle * factor), r*sin(angle * factor));
   // ellipse(pv1.x, pv1.y, 3, 3);
    line(pv1.x, pv1.y, pv2.x, pv2.y);
  }
}

void mouseClicked(){
  saveFrame("output/gol.png");
  
}