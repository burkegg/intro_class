// Here is your homework for conditionals pt 2.
// A sketch to introduce using multiple conditionals
// and boolean variables.
// Assignment:  Make the background turn back to white if 
// the user clicks in the top left quadrant.

int back_g;
void setup() {
  size(400, 400);
  back_g = 255;
}

void draw() {
  background(back_g);
  fill(175);
  rect(width/2, 0, width/2, height/2);
  if ((mousePressed == true) && (mouseX > width/2) && (mouseY < height/2)) {
    back_g = 0;
  }
  // Put your if statement here.  You can use the one above and modify it.

}
