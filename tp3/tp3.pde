//Alverde Miranda Legajo:118955/4
//https://youtu.be/_xH9cjxcmac
PImage obratp3;
int cant = 9;
float modX, modY;
color[][] colores;

void setup() {
  size(800, 400);
  obratp3 = loadImage("obratp3.jpg");
  modX = 400 / cant;
  modY = 400 / cant;
  colores = new color[cant][cant];
  for (int j = 0; j < cant; j++) {
    for (int i = 0; i < cant; i++) {
      if ((i+j)%2==0) {
        colores[i][j]=color(0);
      } else {
        colores[i][j]=color(255);
      }
    }
  }
}

void draw() {
  background(255);
  image(obratp3, 0, 0, 400, 400);
  for (int j = 0; j < cant; j++) {
    for (int i = 0; i < cant; i++) {
      fill(colores[i][j]);
      rect(400 + i * modX, j * modY, modX, modY);
      if ((i + j) % 2 == 0) {
        float cuadChicos = modX / 5;
        fill(255);
        for (int m = 0; m < 2; m++) {
          for (int n = 0; n < 2; n++) {
            float cuadX = 400 + i * modX + m * (modX - cuadChicos);
            float cuadY = j * modY + n * (modY - cuadChicos);
            rect(cuadX, cuadY, cuadChicos, cuadChicos);
          }
        }
      }
    }
  }
}

void mousePressed() {
  cambiarColores();
}

void keyPressed() {
  if (key == ' ') {
    for (int j = 0; j < cant; j++) {
      for (int i = 0; i < cant; i++) {
        if ((i+j)%2==0) {
          colores[i][j]=color(0);
        } else {
          colores[i][j]=color(255);
        }
      }
    }
  }
  if (key=='c') {
    fill(255, 0, 0);
    dibujarCirculo(mouseX, mouseY, 50);
  }
}
void cambiarColores() {
  for (int j = 0; j < cant; j++) {
    for (int i = 0; i < cant; i++) {
      colores[i][j] = coloresRndm();
    }
  }
}

color coloresRndm() {
  return color(random(255), random(255), random(255));
}

void dibujarCirculo(float x, float y, float radio) {
  ellipse(x, y, radio * 2, radio * 2);
}
