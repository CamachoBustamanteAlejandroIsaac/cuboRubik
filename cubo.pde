class cubo{
  PVector pos;
  float len;
  
  cubo(float x, float y ,float z, float length){
    pos = new PVector(x,y,z);
    len = length;
    
  }
  void show(){
    fill(255);
    stroke(0);
    strokeWeight(7);
    pushMatrix();
    translate(pos.x, pos.y, pos.z);
    beginShape(QUADS);
    
    float r = len / 2;
    //X
    fill (colors[BP]);
    vertex(-r, -r, -r);
    vertex(r, -r, -r);
    vertex(r, r, -r);
    vertex(-r, r, -r);
    
     fill (colors[FP]);
    vertex(-r, -r, r);
    vertex(r, -r, r);
    vertex(r, r, r);
    vertex(-r, r, r);
    //Y
    fill (colors[DP]);
    vertex(-r, -r, -r);
    vertex(r, -r, -r);
    vertex(r, -r, r);
    vertex(-r, -r, r);
    
     fill (colors[UPP]);
    vertex(-r, r, -r);
    vertex(r, r, -r);
    vertex(r, r, r);
    vertex(-r, r, r);
    
    //X
    fill (colors[LP]);
    vertex(-r, r, -r);
    vertex(-r, -r, -r);
    vertex(-r, -r, r);
    vertex(-r, r, r);
    
     fill (colors[RP]);
    vertex(r, -r, -r);
    vertex(r, r, -r);
    vertex(r, r, r);
    vertex(r, -r, r);
    
    endShape();
    
    popMatrix();
    
  }
  
  
}
