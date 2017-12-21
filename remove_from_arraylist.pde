/*
  An example of how to remove items from an arraylist.
  The students have made classes for the fish flakes: Food
  and a class for the fish, Fish.
*/
  

ArrayList<Food>flakes = new ArrayList<Food>();
ArrayList<Food>removal = new ArrayList<Food>();
void setup() {
  size(500, 500);
  f1 = new Food();
  f2 = new Fish();
}
void draw() {
  background(255);
  //println(frameCount);

  if (mousePressed) {
    flakes.add(new Food());
  }

  for (Food fo : flakes) {
    fo.move();
    fo.display();
    if ((fo.y_loc > height)||(dist(f2.x_loc, f2.y_loc, fo.x_loc, fo.y_loc) < 30)) {
      removal.add(fo);
    }
  }

  f1.move();
  f1.display();

  f2.move();
  f2.display();
  println(flakes.size());
  for(Food fo : removal){
    flakes.remove(fo);
  }

}
