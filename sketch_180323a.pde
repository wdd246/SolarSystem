float r = 100;
float x,y;
float ji=0;
float jm=0;
float je=0;
float jv=0;
float jme=0;
float js=0;
float ju=0;
float jn=0;
float jp=0;

void setup(){
   size(1280,720);
   x=width/2;
   y=height/2;
   ellipseMode(RADIUS);
   background(0,0,0);
   noStroke();
}

void draw(){
   background(0);
  //sun
   fill(255,255,0);
   ellipse(x,y,r,r);
   
   strokeWeight(0.01);
   stroke(255,255,255);
   noFill();
   ellipse(x,y,r+4,r+4);
   
   //mercury
   fill(255,0,0);
   ellipse(x+cos(jme+=0.050)*(r+3.85),y+sin(jme)*(r+3.05),0.3,0.3);
   
   strokeWeight(0.01);
   stroke(255,255,255);
   noFill();
   ellipse(x,y,r+8,r+8);
   
   //venus
   fill(255,0,0);
   ellipse(x+cos(jv+=0.035)*(r+7.6),y+sin(jv)*(r+7.6),0.8,0.8);
   
   strokeWeight(0.01);
   stroke(255,255,255);
   noFill();
   ellipse(x,y,r+10,r+10);

   //earth
   fill(0,255,0);
   ellipse(x+cos(je+=0.03)*(r+9.5),y+sin(je)*(r+9.5),1,1);
   
   strokeWeight(0.01);
   stroke(255,255,255);
   noFill();
   ellipse(x,y,r+16,r+16);

   //mars
   fill(255,0,0);
   ellipse(x+cos(jm+=0.024)*(r+15.8),y+sin(jm)*(r+15.8),0.4,0.4);
   
   strokeWeight(5.01);
   stroke(155,155,155);
   noFill();
   ellipse(x,y,r+30,r+30);
   
   strokeWeight(0.01);
   stroke(255,255,255);
   noFill();
   ellipse(x,y,r+52,r+52);
   
   //jupiter
   fill(150,150,150);
   //background(0,0,0);
   ellipse(x+cos(ji+=0.013)*(r+52),y+sin(ji)*(r+52),10.2,10.2);
   
   strokeWeight(0.01);
   stroke(255,255,255);
   noFill();
   ellipse(x,y,r+100,r+100);
   
   //saturn
   fill(200,200,100);
   ellipse(x+cos(js+=0.0096)*(r+100),y+sin(js)*(r+100),8.3,8.3);
   
   strokeWeight(0.01);
   stroke(255,255,255);
   noFill();
   ellipse(x,y,r+200,r+200);
   
   //uranus
   fill(0,0,200);
   ellipse(x+cos(ju+=0.0068)*(r+200),y+sin(ju)*(r+200),3.3,3.3);
   
   strokeWeight(0.01);
   stroke(255,255,255);
   noFill();
   ellipse(x,y,r+300,r+300);
   
   //neptune
   fill(0,0,255);
   ellipse(x+cos(jn+=0.0054)*(r+300),y+sin(jn)*(r+300),3.2,3.2);
   
   //strokeWeight(0.01);
   //stroke(255,255,255);
   //noFill();
   //ellipse(x,y,r+400,r+400);
   
   //pluto
   fill(255,0,0);
   ellipse(x+cos(jp+=0.0046)*(r+400),y+sin(jp)*(r+400),0.1,0.1);
   
  
}
