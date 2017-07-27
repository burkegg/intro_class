// Here is your homework for Conditionals Pt 1.  
// Please fill in the missing information to make
// the sky turn red as the sun goes down.

int blue;
// Declare a variable for red here.

void setup() {
  size(600, 600);
  blue = 255;
  // Initialize red variable here.
}

void draw() {
  background(red, 0, blue);

  fill(250, 250, 0);
  ellipse(mouseX, mouseY, 75, 75);
  fill(0, 255, 0);
  rect(0, height/2, width, height/2);
  if (mouseY > height/2 + diameter/2) {
    blue = 0;
  } else if (mouseY > height/2 - diameter/2) {
    blue = 155;
    // Assign red a value here.
  } else {
    blue = 255;
    // Return red to its original value.
  }
}
