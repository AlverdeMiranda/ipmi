//Alverde Miranda comisión 3
//Legajo:118955/4
int estado=1;
PImage imagen1, imagen2, imagen3, imagen4;
PFont miFuente;
String texto1;
String texto2;
String texto3;
String texto4;
int contador;
int posX=10;
int posY=400;
int posY2=18;
int posX2=0;
int posY3=400;
int botonX=240;
int botonY=30;
int botonAncho=200;
int botonAlto=50;
color colorBoton=#5964A2;
void setup(){
 size(640,480);
 estado = 1;
 imagen1 = loadImage ("imagen1.jpg");
 imagen2 = loadImage ("imagen2.jpg");
 imagen3 = loadImage ("imagen3.jpg");
 imagen4 = loadImage ("imagen4.jpg");
 miFuente = loadFont ("NSimSun-25.vlw");
 texto1 = "La Serpiente y el Jaguar \n19 de Julio 2019";
 texto2 = "Fue una muestra presentada en el Centro cultural \nRecoleta por el colectivo de arte \nelectrónico Biopus.";
 texto3 = "La muestra fue una serpiente de gran escala que \nel público pudo intervenir, a través de \ndispositivos electrónicos, escribiendo textos que \naparecieron en el cuerpo de la serpiente.";
 texto4 = "Además hubo un jaguar \nque dialogó con una \nserie de tótems portadores \nde figuras devocionales \ncontemporaneas.";
 contador = 0;
}
void draw(){
  textSize(25);
  textFont(miFuente);
  println(contador);
  if (estado==1){
    image(imagen1, 0, 0, 640,480);
    fill(255);
    text(texto1,posX,posY);
    posX+=3;
    contador++;
  }
  
  if (posX>=width){
    estado++;
    image(imagen2,0,0,640,480);
    fill(255);
    text(texto2,0,posY);
    posY-=2;
    contador++;
 }
  if (contador>=400){
   image(imagen3,0,0,640,480);
   text(texto3,0,posY2);
   posY2+=3;
   estado=3;
 }
 if (contador>=600){
   image(imagen4,0,0,640,480);
   text(texto4,posX2,posY3);
   fill(255);
   rect(botonX,botonY,botonAncho,botonAlto);
   fill(0);
   textSize(15);
   textAlign(CENTER,CENTER);
   text("VER DE NUEVO", botonX,botonY,botonAncho,botonAlto);
   posX2+=3;
   estado=4;
 }
 if (mousePressed && mouseX >= botonX && mouseX <= botonX + botonAncho && mouseY >= botonY && mouseY <= botonY + botonAlto) {
   reset();
 }
 
}
void reset(){
 contador=0;
 posX = 10;
 posY = 400;
 posY2 = 18;
 posX2 = 0;
 posY3 = 350;
 estado = 1;
}
