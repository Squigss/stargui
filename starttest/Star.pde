class Star {
  float x;
  float y; 
  float radius1;
  float radius2; 
  int npoints;
  float posx;
  float posy;
  int Colour = 0;

 
  Star (float x, float y, float radius1, float radius2, int npoints,
        float posx, float posy) {
    this.x = x;
    this.y = y; 
    this.radius1 = radius1;
    this.radius2 = radius2; 
    this.npoints = npoints;
    this.posx = posx;
    this.posy = posy;
  }
  
  public void Draw() {
    pushMatrix();
    translate(posx, posy);
    rotate(frameCount / -100.0);
    star(x, y, radius1, radius2, npoints); 
    popMatrix();
  }
  
  void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  
  beginShape();
  fill(Colour);
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  
  endShape(CLOSE);
}
  
  public void changecolor() {
   if (Colour == 0) {
      Colour = 066;
   }
   else if (Colour == 066) {
      Colour = 0;
   }
  }
  
}
