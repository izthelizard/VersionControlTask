class Particle {
  
  //added a boolean so that if the particles fell off screen they would repeat
boolean isOffScreen() {
    return 400 > height;
  }
  
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  Particle(float x, float y){
    position = new PVector(x, y);
    velocity = new PVector(random(-2, 2), random(-2, 2));
    acceleration = new PVector(0, 0.5);
  }
  
  void update(){
    velocity.add(acceleration);
    position.add(velocity);
  }
  
  void display(){
    //added fill() to randomize the colour
    fill(random(255), random(255), random(255));
    ellipse(position.x, position.y, 10, 10);
  }
}
