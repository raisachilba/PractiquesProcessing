int x = 250;
int y = 100;
int  alturacoll = 20;
int alturacos = 170;

void setup(){
 size(500,550); 
 strokeWeight(2);
 background(255);
 rectMode(CENTER);
}

void dibuixaCap(){
  //Cap
  fill(200); stroke(90);
  circle(x,y,100);
  //Ulls
  fill(200, 50, 50); stroke(200, 50, 50);
  circle(x-20, y-10, 8);
  fill(200, 50, 50); stroke(200, 50, 50);
  circle(x+20, y-10, 8);
  //Boca
  stroke(50, 50, 150); fill(50, 50, 150);
  ellipse(x, y+20, 50, 10);
}

void dibuixaAntena(){
  fill(200); stroke(90);
  line(x, y-50, x, y-70);
  fill(0); stroke(0);
  circle(x, y-70, 10);
}

void dibuixaColl(){
  fill(200); stroke(90); 
  rect(x, y + 60, 20, alturacoll);
}

void dibuixaCos(){
  rect(x, y + 150, 200, alturacos);
  //Quadre control
  fill(255); stroke(150);
  rect(x, y + 150, 90, 80);
  fill(0); noStroke();
  ellipse(x, y + 130, 50, 8);
  ellipse(x, y + 140, 50, 8);
  fill(0, 255, 0); stroke(0, 255, 0);
  circle(x - 16, y + 153, 8);
  circle(x - 16, y + 170, 8);
  fill(0, 0, 255); stroke(0, 0, 255);
  triangle(x + 16, y + 150, x + 22, y + 157, x + 10, y + 157);
  triangle(x + 16, y + 167, x + 22, y + 174, x + 10, y + 174);
}

void dibuixaBracos(){
  fill(200); stroke(90);
  rect(x - 120, y + 172, 40, 155);
  rect(x + 120, y + 172, 40, 155);
}

void dibuixaCames(){
  rect(x - 40, y + 255, 20, 40);
  rect(x - 40, y + 290, 40, 60);
  rect(x + 40, y + 255, 20, 40);
  rect(x + 40, y + 290, 40, 60);
  fill(255, 100, 150, 200);
  triangle(x - 40, y + 300, x - 20, y + 320, x - 60, y + 320);
  triangle(x + 40, y + 300, x + 20, y + 320, x + 60, y + 320);
}

void dibuixaRobot(){
  dibuixaCap();
  dibuixaAntena();
  dibuixaColl();
  dibuixaCos();
  dibuixaBracos();
  dibuixaCames();
}
  
void draw(){
  dibuixaRobot();
}
