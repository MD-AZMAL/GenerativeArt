ArrayList<Particle> particles;

void setup() {
   size(700,700);
   background(255);
   particles = new ArrayList<Particle>();
   
   for(int i = 0 ; i < 10 ; i ++) {
      particles.add(new Particle()); 
   }
}

void draw() {
  fadeFill();
  for(Particle P : particles) {
     P.drawParticle();
     P.update(); 
  }
}

void fadeFill() {
   fill(255,255,255,5);
   noStroke();
   rect(0,0,width,height);
}

void KeyPressed() {
   if(key == ENTER) {
      particles.add(new Particle()); 
   }
}
