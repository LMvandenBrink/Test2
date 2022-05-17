
// NEEDS DOCUMENTATION
// GAME under development

// Add relevant license
// LMVandenBrink

float diam=64;
float angle = 0;
int count;
int vel = 100;
boolean tabbed = false;
int tgl;
Vehicle cycl;
DualArk[] decks;

void setup() {
  fullScreen();
  //frameRate(60);
  //size(600,600);
  textSize(16);
  textAlign(LEFT, TOP);
  fill(255, 0, 0);  //text color
  cycl = new Vehicle(360);
  count = 6;
  decks = new DualArk[count];
  for (int i = 0; i < count; i++) {
    decks[i] = new DualArk(width/2, height/2, i*128, angle);
  }
  smooth();
}

void draw() {
  background(0);

  cycl.display();
  cycl.update(vel);

  for (DualArk deck : decks) {
    deck.display();
    //deck.update(int(random(96, 128)));
    deck.update(100);
  }
  text(vel, 50, 50);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) { 
      vel += 2;
    } else if (keyCode == DOWN) { 
      vel -= 2;
    }
  } 
}

//void keyPressed() {
//  tgl = int(key);
//  tabbed = true;
//  if (tgl == 32) {
//    vel += 2;
//  } 

//  if (vel >= 128) {
//    vel=12;
//  }
//}

//void keyReleased() {
//  tabbed = false;
//}
