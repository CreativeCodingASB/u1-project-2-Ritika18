import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;
PeasyCam cam;

Cube blueCube;
Cube pinkCube;
Sphere sphere;

void setup()
{
  fullScreen(P3D);
  
  cam = new PeasyCam(this, 1000);
  cam.setMinimumDistance(50);
  cam.setMaximumDistance(500);
  
  blueCube = new Cube(new PVector(150, 150, 10), new PVector(50,100,200), 100);
  pinkCube = new Cube(new PVector(160,160,10), new PVector (200,50,168), 100);
  sphere = new Sphere(new PVector(10,10,10), new PVector (175,255,32), 100, false);
  
}

void draw()
{
  
  sphere.Update();
  sphere.Draw();
  
  blueCube.Draw();
  pinkCube.Draw();
  
  
  //// used for translating, the top board to only move this object   
  //pushMatrix(); 
  ////location(x,y,z = front to back - changes size)
  //// translate(10,10,10); == makes it in the middle of the screen
  //translate(x+150, y-150, z); 
  //fill(175,255,32);
  //stroke(0);
  //// size of the sphere
  //sphere(size); 
  //// leaves it in place and takes out the matric formed in the beginning
  //popMatrix(); 
  
  //// used for translating, the top board to only move this object   
  //pushMatrix(); 
  ////location(x,y,z = front to back - changes size)
  //// translate(10,10,10); == makes it in the middle of the screen
  //translate(x-150, y+150, z); 
  //fill(100,50,168);
  //stroke(0);
  //// size of the sphere
  //sphere(size); 
  //// leaves it in place and takes out the matric formed in the beginning
  //popMatrix(); 
  
  //// used for translating, the top board to only move this object   
  //pushMatrix(); 
  ////location(x,y,z = front to back - changes size)
  //// translate(10,10,10); == makes it in the middle of the screen
  //translate(x, y, z+3); 
  //fill(255);
  //stroke(0);
  //// size of the sphere
  //sphere(size); 
  //// leaves it in place and takes out the matric formed in the beginning
  //popMatrix(); 
  
  //// used for translating, the top board to only move this object   
  //pushMatrix(); 
  ////location(x,y,z = front to back - changes size)
  //// translate(10,10,10); == makes it in the middle of the screen
  //translate(x, y, z-3); 
  //fill(75,150,75);
  //stroke(0);
  //// size of the sphere
  //sphere(size); 
  //// leaves it in place and takes out the matric formed in the beginning
  //popMatrix(); 
  
}

/*
MAKE A PYRAMID: (all in void draw)

translate(width/2, height/2, 0);
stroke(255);
rotateX(PI/2);
rotateZ(-PI/6);
noFill();

beginShape();
vertex(-100, -100, -100);
vertex( 100, -100, -100);
vertex(   0,    0,  100);

vertex( 100, -100, -100);
vertex( 100,  100, -100);
vertex(   0,    0,  100);

vertex( 100, 100, -100);
vertex(-100, 100, -100);
vertex(   0,   0,  100);

vertex(-100,  100, -100);
vertex(-100, -100, -100);
vertex(   0,    0,  100);
endShape();
*/


/*
TO ADD AN IMAGE TO MY SHAPE:
PImage img;

void setup() {
  size(640, 360, P3D);
  img = loadImage("berlin-1.jpg");
}

// Call texture(). The texture() function must be called between beginShape() and endShape() and before any calls to vertex(). The texture() function receives only one argument, the PImage that will be applied as a texture.

void draw() {
  background(0);  
  translate(width / 2, height / 2);
  stroke(255);
  fill(127);
  beginShape();
  texture(img);
*/


/*
TYPES OF LIGHT FUNCTIONS

lights() - which just adds some life to whatever part is pressed

ambientLight(252,164,239) -- adds a color filtered light

directionalLight(0, 255, 0, 0, -1, 0) -- which adds color stronger at a certain place
// This is used (r,g,b,x,y,z); the x y and z is what direction the light is going



*/