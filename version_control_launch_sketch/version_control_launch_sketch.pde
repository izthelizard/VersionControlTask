ArrayList<Particle> particles;

void setup(){
 size(400,400);
 particles = new ArrayList<Particle>();
}

void draw(){
  background(0);
  for (int i = 0; i < particles.size(); i++){
    particles.get(i).update();
    particles.get(i).display();
  }
  if(mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
