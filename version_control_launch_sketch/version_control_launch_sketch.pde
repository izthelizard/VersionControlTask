ArrayList<Particle> particles;


void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
  //reversed the statement
  for (int i = particles.size() - 1; i >= 0; i--){
    Particle p= particles.get(i); 
    particles.get(i).update();
    particles.get(i).display();

//added code to remove the particles when they fall off and made it effective
    if (p.isOffScreen()) {
      particles.remove(i); 
    }
  }
  
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
