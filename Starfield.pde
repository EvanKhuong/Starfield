class Particle{
  int myColor1,myColor2,myColor3;
  double myX, myY, mySpeed, myAngle, myThickness;
  Particle(){
    myX=250;
    myY=250;
    myAngle=(Math.random()*361);
    mySpeed=(Math.random()*3);
    myColor1=(int)(Math.random()*100);
    myColor2=(int)(Math.random()*100);
    myColor3=(int)(Math.random()*100);
    myThickness = (Math.random()*1);
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
    myThickness = myThickness+0.5;
    myColor1+=2;
    myColor2+=2;
    myColor3+=2;
    if (myColor1 > 210 && myColor2 > 210 && myColor3 > 210){
     myColor1-=2;
     myColor2-=2;
      myColor3-=2;
    }
  }
  void show(){
    fill(myColor1,myColor2,myColor3);
    ellipse((float)myX,(float)myY,(float)myThickness,(float)myThickness);
  }
}
class OddballParticle extends Particle{
  OddballParticle(){
    myX=(Math.random()*500);
    myY=(Math.random()*500);
    myAngle=(Math.random()*361);
    mySpeed=(Math.random()*0.5);
    myColor1=255;
    myColor2=0;
    myColor3=0;
    myThickness = (Math.random()*1);
  }
}
Particle[] star = new Particle[16];
void setup(){
  noStroke();
  background(0,0,0);
  size(500,500);
  star[0] = new OddballParticle();
  for (int i = 1; i<star.length; i++)
  {
    star[i] = new Particle();
  }
}

void draw(){
  //background(0,0,0);
  for (int i=0; i<star.length; i++)
  {
  star[i].show();
  star[i].move();
  }
}
