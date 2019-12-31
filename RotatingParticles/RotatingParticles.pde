ArrayList<Particle> particles;

void setup() {
   size(700,700);
   background(255);
   particles = new ArrayList<Particle>();
   
   for(int i = 0 ; i < 50 ; i ++) {
      particles.add(new Particle()); 
   }
}

void draw() {
  //fadeFill();
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

void keyPressed() {
  
   if(key == ' ') {
      particles.add(new Particle()); 
   }else if (key == 's') {
      saveFrame("flower###.png"); 
   }
}
