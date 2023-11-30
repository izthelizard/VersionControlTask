ArrayList<Particle> particles;


void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);

  //reversed the statement
  for (int j = particles.size() - 1; j >= 0; j--){
    Particle p= particles.get(j); 
    particles.get(j).update();
    particles.get(j).display();

//added code to remove the particles when they fall off and made it effective
    if (p.isOffScreen()) {
      particles.remove(j); 
    }

  for (int j = 0; j < particles.size(); j++){
    particles.get(j).update();
    particles.get(j).display();

  }
  
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
