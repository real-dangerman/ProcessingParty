/**
simple bifurcation script after reading "Chaos"
*/

int i=640;

void setup(){
 size(640,640, P2D); 
 stroke(255); 
 background(0); //black
}


void draw()
{
 float n=0.5;
 float d=0.00002;
 
 for (float r=1+random(d); r<4; r=r+d)
   {
     n=r*n*(1-n); //the formula
     
     point(-61*r*(1-r)-220, i-n*i); //where to put it
   }
}
