double x = 0;

public void draw () { 
  background(255, 30, 30);
  fill((int)(Math.random()*x),(int)(Math.random()*x),(int)(Math.random()*x));
  myFractal(250, 250, 480);
  fill(255);
  myEllipse(0, 0, 280);
  myEllipse(0, 500, 280);
  myNewEllipse(500, 0, 280);
  myNewEllipse(500, 500, 280);
  stayStill(50, 250, 100);
  stayStill(450, 250, 100);
  if (x < 100)
    x += 0.5;
  else 
    x += 2 + random((float)x-51,(float)x-53);
  if (x >= 255) 
    x = 0;
}

public void setup () {
  size(500, 500);
  rectMode(CENTER);
  ellipseMode(CENTER);
}

public void myFractal(int x, int y, int size) {
  rect(x, y, size, size);
  if (size >= 10) {
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    myFractal(x-(int)(Math.random()*10), y-(int)(Math.random()*10), size/2);
    myFractal(x+(int)(Math.random()*10), y+(int)(Math.random()*10), size/2);
  }
}

public void myEllipse(int x, int y, int size) {
  ellipse(x, y, size, size);
  if (size >= 50) {
    myEllipse(x-(int)(Math.random()*80), y, (int)random(size/2, size/3));
  }
}

public void myNewEllipse(int x, int y, int size) {
  ellipse(x, y, size, size);
  if (size >= 50) {
    myNewEllipse(x+(int)(Math.random()*80), y, (int)random(size/2, size/3));
  }
}

public void stayStill(int x, int y, int size) {
  rect(x, y, size, size);
  if (size >= 20) {
    stayStill(x, y, size/2);
    stayStill(x, y-30, size/2);
  }
}

