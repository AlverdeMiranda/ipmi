//Alverde Miranda 118955/4
//https://youtu.be/7zISDz0wk8g
PImage obratp3;
int cant = 9;
float modX, modY;
color[][] colores;
 
void setup() {
  size(800, 400);
  obratp3 = loadImage("obratp3.jpg");
  modX = 400/ cant;
  modY = 400/ cant;
  colores = new color[cant][cant];
  for (int j = 0; j < cant; j++) {
    for (int i = 0; i < cant; i++) {
      if ((i + j) % 2 == 0) {
        colores[i][j] = color(0);
      } else {
        colores[i][j] = color(255); 
      }
    }
  }
}
void draw(){
  background(255);
  image(obratp3, 0, 0, 400, 400);
  for (int j = 0; j < cant; j++) {
    for (int i = 0; i < cant; i++) {
      fill(colores[i][j]);
      rect(400 + i * modX, j * modY, modX, modY);
    }
  }
 
  cuadradosBlancos();
}

void mousePressed() {
   
  for (int j = 0; j < cant; j++) {
    for (int i = 0; i < cant; i++) {
      colores[i][j] = color(random(255), random(255), random(255));
    }
  }
}
void keyPressed(){
 if(key==' '){
  for (int j = 0; j < cant; j++) {
    for (int i = 0; i < cant; i++) {
      if ((i + j) % 2 == 0) {
        colores[i][j] = color(0);
      } else {
        colores[i][j] = color(255); 
      }
    }
  }
 }
}
