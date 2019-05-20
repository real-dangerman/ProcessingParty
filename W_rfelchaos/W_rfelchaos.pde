int h = 640;             //Fensterhöhe
int w = 480;             //Fensterbreite
int iterator = 10;       //Größe der Würfel
float r = 0;             //R von RGB
float g = 0;             //G von RGB
float b = 0;             //B von RGB

// Canvas und Co.
void setup() {
size(640, 480);
noSmooth();
background(0);
translate(0, 0);
}

// leere Hülle
void draw() {
  noStroke();
}  

// Zeichne beim Bewegen ein neues Würfelchaos
void mouseMoved() {
  b = random(0,255);
      for (int i=0; i<h; i = i + iterator) {
        for (int j=0; j<h; j = j + iterator) {
          r = random(0,255);
          g = random(0,255);
          b = random(0,255);
          fill(r,g,b);
          rect(j,i,iterator,iterator); 
    }
  }
}