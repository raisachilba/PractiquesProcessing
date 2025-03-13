color c;
String s;
float r;
boolean enableDrawing;

void setup() {

  size(800, 800);
  background(220);
  rectMode(CENTER);
  c = color(0);
  s = "RECT";
  r = 20;
  enableDrawing = false;
}

void setColor() {
  if (key == 'O' || key == 'o') {
    c = color(200, 100, 50);
  } else if (key == 'P' || key == 'p') {
    c = color(200, 0, 255);
  } else if (key == 'Y' || key == 'y') {
    c = color(255, 255, 0);
  }
  fill(c);
}

void setSize() {
  if (keyCode == UP) {
    r+=10;
  } else if (keyCode == DOWN) {
    r-=10;
    if (r <= 5) {
      r = 5;
    }
  }
  println("SIZE: " + r);
}

void setShape() {
  if (key == '1') {
    s = "RECT";
  } else if (key == '2') {
    s = "CIRCLE";
  } else if (key == '3') {
    s = "TRIANGLE";
  }
  println("SHAPE: " + s);
}

// Funció per abilitar / desabilitar el dibuixar
void setEnableDrawing() {
  if (key=='d' || key=='D') {
    enableDrawing = !enableDrawing;
  }
}

void keyPressed() {
  resetCanvas();
  setEnableDrawing();
  setShape();
  setSize();
  setColor();
}

void mousePressed() {
  drawShape();
}

void drawShape() {
  if (enableDrawing) {
    fill(c);
    if (s == "RECT") {
      rect(mouseX, mouseY, r, r);
    } else if (s == "CIRCLE") {
      circle(mouseX, mouseY, r);
    } else if (s == "TRIANGLE") {
      triangle(mouseX, mouseY - r, mouseX - r, mouseY + r, mouseX + r, mouseY + r);
    }
  }
}
void resetCanvas() {
  if (keyCode == DELETE) {
    background(255);
  }
}

void draw() {
  drawShape();
}
