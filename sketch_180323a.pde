float r = 100; //sun radius
float x,y;
float ji=0,jm=0,je=0,jv=0,jme=0,js=0,ju=0,jn=0,jp=0; //start speed each planet
float[] orbit_radius = {r+4,r+8,r+10,r+16,r+52,r+100,r+200,r+300,r+400}; //orbit radius 
float[] speed = {0.050,0.035,0.03,0.024,0.013,0.0096,0.0068,0.0054,0.0046}; //planet speed 
float[] planet_radius = {0.3, 0.8, 1, 0.4, 10.2, 8.3, 3.3, 3.2, 0.1}; //planet radius
int i,j,k,s,a,p;
 
void setup(){
   size(1280,720); 
   x=width/2; //center x
   y=height/2; //center y
   ellipseMode(RADIUS);
   background(0,0,0);
   noStroke();
}

void orbit(){ 
  while(i<orbit_radius.length){
   strokeWeight(0.01);
   stroke(255,255,255);
   noFill();
   ellipse(x,y,orbit_radius[i],orbit_radius[i++]);
  }
}

void planet(){
    j=0; // planet index
    s=0; // speed index
    a=0; // orbit radius index
    p=0; // planet radius index

    float[][] planets = 
{{x+cos(jme+=speed[s++])*(orbit_radius[a]),y+sin(jme)*(orbit_radius[a++]),planet_radius[p++]},
{x+cos(jv+=speed[s++])*(orbit_radius[a]),y+sin(jv)*(orbit_radius[a++]),planet_radius[p++]},
{x+cos(je+=speed[s++])*(orbit_radius[a]),y+sin(je)*(orbit_radius[a++]),planet_radius[p++]},
{x+cos(jm+=speed[s++])*(orbit_radius[a]),y+sin(jm)*(orbit_radius[a++]),planet_radius[p++]},
{x+cos(ji+=speed[s++])*(orbit_radius[a]),y+sin(ji)*(orbit_radius[a++]),planet_radius[p++]},
{x+cos(js+=speed[s++])*(orbit_radius[a]),y+sin(js)*(orbit_radius[a++]),planet_radius[p++]},
{x+cos(ju+=speed[s++])*(orbit_radius[a]),y+sin(ju)*(orbit_radius[a++]),planet_radius[p++]},
{x+cos(jn+=speed[s++])*(orbit_radius[a]),y+sin(jn)*(orbit_radius[a++]),planet_radius[p++]},
{x+cos(jp+=speed[s++])*(orbit_radius[a]),y+sin(jp)*(orbit_radius[a++]),planet_radius[p++]}}; //planets x,y,r

  while(j<planets.length){
    k=0; // planet setting index
    
    fill(0,0,255); // color
    if(j<=3)fill(255,0,0); 
    if(j==2)fill(0,255,0); 
    
    ellipse(planets[j][k++],planets[j][k++],planets[j][k],planets[j++][k]);
  }
}

void dirt(){
   strokeWeight(5.01);
   stroke(155,155,155);
   noFill();
   ellipse(x,y,r+30,r+30);
}

void draw(){
   i=0;
   background(0);
   
   //sun
   strokeWeight(0.01);
   fill(255,255,0);
   ellipse(x,y,r,r);
   
   orbit();
   planet();
   
   //mercury
   //venus   
   //earth
   //mars
   //jupiter  
   //saturn
   //uranus
   //neptune
   //pluto
   
   dirt();
  
}
