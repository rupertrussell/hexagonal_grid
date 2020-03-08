// Used to tile a repeating pattern of hexagons
// code by Rupert Russell
// code on github at: https://github.com/rupertrussell?tab=repositories
// March 2020
// artwork on redbubble at: https://www.redbubble.com/people/rupertrussell/works/45496091-islamic-design-212-001

PImage imgBlack;
PImage imgWhite;
PImage imgYellow;

float imageWidth = 76;
float imageHeight = 88;


void setup() {
  // Images must be in the "data" directory to load correctly
  imgBlack = loadImage("white.png");
  imgWhite = loadImage("black.png");
  imgYellow = loadImage("yellow.png");
  noLoop(); 
  size(900, 900);
}

void draw() {
background(255);
  for (int count=0; count < 10; count++) {
    for ( int j=0; j<10; j++) {
      if (count % 2 == 0) { // even lines
        image(imgBlack, (imageWidth * j) + imageWidth, imageHeight * count  * 0.75);
      }
      if (count % 2 != 0) { // odd lines
        image(imgWhite, (imageWidth * j) + imageWidth * 1.5, imageHeight * count * 0.75);
      }
    }
  }
  
  save("hexagonal_grid_003.png");
  println("Saved");
  
}
