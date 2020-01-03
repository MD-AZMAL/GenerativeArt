ArrayList<Particle> particles;

void setup() {
   size(700,700);
   background(255);
   particles = new ArrayList<Particle>();
   
   float r = random(10,150);
   int i, j;
   for(i = 0 ; i < 5 ; i++) {
     for(j = 0 ; j < particles.size() ; j++) {
         if(particles.get(j).collide(r)){
            r = random(10,150);
            j = -1;
         }
     }
     particles.add(new Particle(r)); 
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
   fill(255,255,255,15);
   noStroke();
   rect(0,0,width,height);
}

void keyPressed() {
  
   if(key == ' ') {
       float r = random(10,150);
       for(int j = 0 ; j < particles.size() ; j++) {
         if(particles.get(j).collide(r)){
            println("j : " + j);
            r = random(10,150);
            j = -1;
         }
       }
       particles.add(new Particle(r)); 
   }else if (key == 's') {
      saveFrame("flower###.png"); 
   }
}
