class Particle {
   float inc;
   float r;
   float angle;
   float freq;
   float rad;
   PVector origin;
   color C;
   
   Particle(float r) {
      inc = noise(random(TWO_PI));
      angle = random(TWO_PI);
      this.r = r;
      freq = 10*(r/50);
      rad = 5;
      C = color(255,random(255),0);
      origin = new PVector(width/2,height/2);
   }
   
   void drawParticle() {
      pushMatrix();
      translate(origin.x,origin.y);
      
      noStroke();
      fill(C);
      ellipseMode(RADIUS);
      ellipse(x(),y(),rad,rad);
      
      popMatrix();
   }
   
   void update() {
      angle += inc;
   }
   
   float x() {
      return r*cos(angle/freq); 
   }
   
   float y() {
     return r*sin(angle/freq);  
   }
   
   boolean collide(float r2) {
     float dist = (float)Math.sqrt(Math.pow(r*cos(angle)-r2*cos(angle),2) + Math.pow(r*sin(angle)-r2*sin(angle),2));
     if(dist < 2*rad) {
        return true; 
     }
     return false;
   }
   
}
