// NEEDS DOCUMENTATION
// GAME under development

// Add relevant license
// LMVandenBrink

class DualArk {

  float xpos, ypos = 0;
  float diam       = 0;
  float theta      = 0;
  float strk;               // stroke
  float opac;               // opacity

  DualArk(float xinit, float yinit, float dinit, float rinp) {
    xpos  = xinit;
    ypos  = yinit;
    diam  = dinit;
    theta = rinp;
    opac  = 255;
    strk  = 2;
  }

  void display() {

    pushMatrix();
    translate(xpos, ypos);
    rotate(theta); //  1 rotate func doing the actual rotation

    noFill();
    strokeWeight(strk);
    stroke(#FC1A05, opac);

    arc(0, 0, diam, diam, 0, QUARTER_PI);
    rotate(PI);
    stroke(#051BFF, opac);
    arc(0, 0, diam, diam, 0, QUARTER_PI);
    popMatrix();
  }

  void update(float mctl) {
    theta+=QUARTER_PI/mctl;
  }
}
