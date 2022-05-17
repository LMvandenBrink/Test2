
// NEEDS DOCUMENTATION
// GAME under development

// Add relevant license
// LMVandenBrink

class Vehicle {

  float centrX;
  float centrY;
  float radius; // default value
  float x;
  float y;
  float rad;
  float diam;
  float theta;
  int sclr;
  int vellish;
  color clr;
  
  Vehicle(float _r) {
  //Vehicle(float _r, int _v) {
    rad  = _r;
    //vellish = _v;
    centrX = 0;
    centrY = 0;
    diam = 20;
    clr = color(200, 200, 200);
    sclr = 1;
  }


  void display() {
    pushMatrix();
    translate(width/2, height/2);
    scale(sclr);
    shapr();
    popMatrix();
  }

   void shapr() {
    x  = centrX + cos(theta) * rad;
    y  = centrY + sin(theta) * rad;
    noStroke();
    fill(clr);
    ellipse(x, y, diam, diam);
  
   }

  void update(int vellish) {
    theta+=QUARTER_PI/vellish; 
    // why 1/4 why not just PI?
    // excellent question, sir! change this ratio to a bigger one and see what happens!
  }
}
