import processing.dxf.*;


import peasy.*;

PeasyCam cam;

final int UPP=0;
final int DP=1;
final int RP=2;
final int LP=3;
final int FP=4;
final int BP=5;

color[] colors={
#FFFFFF, #FFFF00, #FFA500, #FF0000, #00FF00, #0000FF
};


 int dim=3;
 
 cubo [][][] cube= new cubo [dim][dim][dim];
 void setup(){
    size (600,600,P3D);
    cam =new PeasyCam(this, 400);
    for(int i=0; i<dim; i++)
    { 
      for(int j=0; j<dim; j++)
      {
        for(int k=0;k<dim; k++)
        {
          float len=50;
          float offset = (dim -1)* len * 0.5;
          float x = len *i -offset;
          float y = len *j -offset;
          float z = len *k -offset;
          cube[i][j][k] = new cubo (x,y,z,len);
        }
      }
    }
 }
 void draw(){
   background(25);
   for(int i=0;i<dim;i++){
     for(int j=0;j<dim;j++){
       for(int k=0;k<dim;k++){
         cube[i][j][k].show();
       }
     }
   }
    
 }
