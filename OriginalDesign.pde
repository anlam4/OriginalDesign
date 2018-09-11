int x = 1;
void setup() {
  size(600,500);
  background(0,0,64);
  frameRate(1);
}
void draw() {
  fill(0,128,0);
  stroke(0,135,0);
  rect(0,350,600,150);
  goblet();
  if (x % 3 == 0) {
    blueFlames();
    x = x + 1;
  }
  else if (x % 2 == 0) {
    redFlames1();
    x = x + 1;
  }
  else {
    redFlames2();
    x = x + 1;
  }
}
void goblet() {
  fill(250,235,10);
  stroke(255,235,10);
  rect(250,200,100,65,1,1,20,20);
  strokeWeight(1);
  beginShape();
  vertex(280,264);
  quadraticVertex(286,320,270,350);
  vertex(334,350);
  quadraticVertex(315,330,318,264);
  endShape();
}
void blueFlames() {
  fill(0,234,234);
  stroke(0,128,192);
  bezier(270,90,290,120,250,170,270,200);
  bezier(290,90,310,120,270,170,290,200);
  bezier(310,90,330,120,290,170,310,200);
  bezier(330,90,350,120,310,170,330,200);
  bezier(270,90,250,120,290,170,270,200);
  bezier(290,90,270,120,310,170,290,200);
  bezier(310,90,290,120,330,170,310,200);
  bezier(330,90,310,120,350,170,330,200);
}
void redFlames1() {
  fill(251,128,4);
  stroke(255,0,0);
  bezier(270,100,250,125,290,175,270,200);
  bezier(290,100,270,125,310,175,290,200);
  bezier(310,100,290,125,330,175,310,200);
  bezier(330,100,310,125,350,175,330,200);
}
void redFlames2() {
  fill(251,128,4);
  stroke(255,0,0);
  bezier(270,100,290,125,250,175,270,200);
  bezier(290,100,310,125,270,175,290,200);
  bezier(310,100,330,125,290,175,310,200);
  bezier(330,100,350,125,310,175,330,200);
}
