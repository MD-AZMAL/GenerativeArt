class Particle {
   float inc;
   float r;
   float angle;
   float freq;
   float rad;
   PVector origin;

   
   Particle() {
      inc = noise(random(TWO_PI));
      angle = random(TWO_PI);
      r = random(10,150);
      freq = 1;
      rad = 5;
      origin = new PVector(width/2,height/2);
   }
   
   void drawParticle() {
      pushMatrix();
      translate(origin.x,origin.y);
      
      noStroke();
      fill(255,random(255),0,100);
      ellipseMode(RADIUS);
      ellipse(x(),y(),rad,rad);
      
      popMatrix();
   }
   
   void update() {
      angle += inc;
      r+=noise(angle);
   }
   
   float x() {
      return r*cos(angle/freq); 
   }
   
   float y() {
     return r*sin(angle/freq);  
   }
      
}
