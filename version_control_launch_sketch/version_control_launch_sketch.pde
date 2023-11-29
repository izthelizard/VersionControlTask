ArrayList<Particle> particles;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
  for (int j = 0; j < particles.size(); j++){
    particles.get(j).update();
    particles.get(j).display();
  }
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
