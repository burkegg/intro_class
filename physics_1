// Ball bouncing off edges
// Physics 1 and logical operators (or:  ||   )
// Assignment:  Inside the if statements, make something else happen
// on the screen whenever the ball bounces off an edge.

int pos_x;
int pos_y;
int velocity_x;
int velocity_y;
void setup(){
  size(800, 500);
  pos_x = 400;
  pos_y = 250;
  velocity_x = 3;
  velocity_y = 3;
}

void draw(){
  background(255);
  fill(0);
  ellipse(pos_x, pos_y, 50, 50);
  
  pos_x = pos_x + velocity_x;
  pos_y = pos_y + velocity_y;
  
  if ((pos_x > width - 25) || (pos_x < 25)){
    // If velocity_x was negative before, what is it now?
    // If velocity_x was positive before, what is it now?
    velocity_x = -velocity_x;
  }
  if ((pos_y > height - 25) || (pos_y < 25)){
    // If velocity_y was negative before, what is it now?
    // If velocity_y was positive before, what is it now?
    velocity_y = -velocity_y;
  }
}
