/* setup 
  This is code that my students will use in their intro to programming class.
  Students will have made most of the classes separately in other programs,
  and will be able to put everything together (with help).
  This is written for the language Processing 2+.
 */

Flyer f;
Timer t;
Timer cloudTimer;
ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();
ArrayList<Cloud> clouds = new ArrayList<Cloud>();
ArrayList<Obstacle> removal = new ArrayList<Obstacle>();

int level;
boolean started;
PVector grav;

void setup() {
  size(600, 600);
  f = new Flyer();
  t = new Timer();
  t.start();
  started = false;
  level = 1;
  cloudTimer = new Timer();
  cloudTimer.start();
}

void draw() {
println(obstacles.size());
  if (started == false) {
    splashScreen();
    obstacles.clear();
    
  } else if ((started == true) && (f.alive() == true)) {
    //The game
    background(50, 50, 200);
    f.grav();
    f.flap();
    f.update();
    f.display();
    f.fallCheck();
    if (t.checkTime() == true) {
      obstacles.add(new Obstacle(level));
      t.start();
    }

    for (Obstacle obs : obstacles) {
      obs.display();
      obs.scroll();
      if (f.obstacleCheck(obs) == true) {
        println("truth!");
        removal.add(obs);
      }
      if (obs.edgeCheck() == true) {
        removal.add(obs);
      }
    }
    obstacles.removeAll(removal);
  }
}
void splashScreen() {
  rectMode(CORNER);
  int boxX, boxY, wide, tall;
  boxX = 50;
  boxY = 50;
  wide = 300;
  tall = 50;
  fill(0);
  rect(boxX, boxY, wide, tall);
  textSize(tall - 15);
  fill(255);
  text("Click to start!", 75, 85);
  if ((mouseX > boxX) && (mouseX < boxX + wide) && (mouseY > boxY) && (mouseY < boxY + tall)
    && (mousePressed == true)) {
    started = true;
  } else {
    started = false;
  }
}

class Cloud{
  /*
  A class to show and animate clouds on the screen.
  */
  float size1, size2, x, y, separation;
  Cloud(){
    size1 = random(20, 40);
    size2 = random(20, 40);
    separation = random(15, 40);
    x = width + size1;
    y = random(0, height/2);
  }
  
  void display(){
    /*
    Draw ellipses that overlap, using variables to keep track of
    their sizes and locations.  As a hint, keep track of the location 
    of one cloud, and set a "separation" that spreads them out a little.
    */
    
    ellipse(x, y, size1, size2);
    ellipse(x + separation, y + separation, size1, size2);
  }
  
  void wind(){
    /*
    This function should update the horizontal position of the clouds, 
    moving them left across the screen.  
    */
    x = x - 1;
  }
}

/*  
 Alive Check - keep # of lives in object and only output whether alive or dead.
 Collision Check - subtract life, clear array
 Offscreen - 
 gravity - 
 flap
 apply forces
 display
 */

class Flyer {

  color c;
  int rad, lives;
  PVector loc;
  PVector vel;
  PVector accel, flap;

  Flyer() {
    lives = 3;
    c = color(155, 0, 255);
    loc = new PVector (width/2, height/2);
    vel = new PVector (0, 0);
    accel = new PVector (0, 0);
    flap = new PVector (0.0, -5.0);
    rad = 20;
  }

  void forces(PVector f) {
    accel.add(f);
  }

  void update() {
    vel.add(accel);
    vel.y = constrain(vel.y, -5, 100);
    loc.add(vel);
    accel.mult(0);
  }

  void display() {
    pushMatrix();
    noStroke();
    fill(c);
    translate(loc.x, loc.y);
    ellipseMode(RADIUS);
    ellipse(0, 0, rad, rad);
    popMatrix();
  }
  boolean fallCheck() {
    if (loc.y + rad > height) {
      lives = lives - 1;
      loc.x = width/2;
      loc.y = height/2;
      vel.y = 0;
      forces(flap);
      return true;
    } else {
      return false;
    }
  }
  void flap() {
    if (keyPressed==true) {
      if (key == CODED) {
        if (keyCode == UP) {
          forces(flap);
        } else {
        }
      }
    }
  }
  void grav() {
    grav = new PVector(0, .2);
    forces(grav);
  }
  boolean alive() {
    if (lives > 0) {
      return true;
    } else {
      lives = 3;
      started = false;
      return false;
    }
  }
  boolean obstacleCheck(Obstacle obs) {
    float distance = dist(obs.x, obs.y, loc.x, loc.y);
    if (distance < (rad + obs.size/2)) {
      lives = lives - 1;
      loc.y = height/2;
      forces(flap);
      println("Lives =  ", lives);
      return true;
    } else {
      return false;
    }
  }
  int getLives(){
    return lives;
  }
}
/*  Obstacles should display and scroll.  
 Obstacles should have an x and y to send coordinates.
 */

class Obstacle {
  color obsColor;
  float x, y;
  float size;
  float vel;
  int level;

  Obstacle(int tempLevel) {
    rectMode(CENTER);
    size = random(35, 100);
    y = random(size/2, height-size/2);
    x = width + size;
    vel = 2;
    level = tempLevel;
    obsColor = color(0, 255, 0);
  }

  void display() {
    fill(obsColor);
    rect(x, y, size, size, 15);
  }
  void scroll() {
    x -= vel*level * 0.5;
  }
    boolean edgeCheck() {
    if ((x + size) < 0) {
      return true;
    } else {
      return false;
    }
  }
}
class Timer {
  // We want a timer where you can input the amount of time as an argument upon creation
  // and it will return true once time is up.
  // it will have methods start() and checkTime().
  // To use it, you will have to create a timer, start a timer, and then check the time.

  int startTime;
  int runTime;
  Timer() {
    runTime = 900;
  }

  void start() {
    startTime = millis();
  }

  boolean checkTime() {
    if (millis() > (startTime + runTime)) { 
      return true;
    } else {
      return false;
    }
  }
}
