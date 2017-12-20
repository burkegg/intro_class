// A program to play with lines, sums, and the ideas of calculus
// Variables for our equations.

float x = 0;
float y = 0; 
float m = 1;
float b = 0;
int num_rects = 20;
ArrayList<PVector> table = new ArrayList<PVector>();

void setup(){
  size(500, 500);
  background(255);
}
void draw(){
  translate(0, height);  
  scale(1, -1);
  
  for (int i = 0; i < width; i++){
    y = m * x + b;
    strokeWeight(1);
    point(x, y);
    if ( x % (width / num_rects) == 0){
      table.add(new PVector(x, y));
    }
    x++;
  }
  
  for (int i = 0; i < table.size(); i++){
    float box_x = table.get(i).x;
    float box_y = table.get(i).y;
    println(box_x, box_y);
    fill(155, 0, 155);
    rect(box_x, 0, width/num_rects, box_y);
  }
  noLoop();
}
