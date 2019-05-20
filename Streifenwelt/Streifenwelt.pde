int h = 255;
int w = 255;
int iterator = 10;
int color_interator = 2;
float r = 0;
float g = 0;
float b = 0;

// Canvas und Co.
void setup() {
size(255, 255);
noSmooth();
background(0);
translate(0, 0);
}

// Zeichne beim Klicken ein neues Würfelchaos
void draw() {
 noStroke();

//  if (mousePressed) {
//    b = random(0,255);
//  }
  r = mouseX;
  g = mouseY;
      for (int i=0; i<h; i = i + iterator) {
        for (int j=0; j<h; j = j + iterator) {
          fill(r,g,b);
          rect(j,i,iterator,iterator); 

      }
          r = r + color_interator;
          g = g + color_interator;
    }
  }
//}