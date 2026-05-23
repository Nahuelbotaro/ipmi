PFont fuente;
PImage img0, img1, img2, img3, img4, img5, img6, img7;
int estado = 0;
String texto0, texto1, texto2, texto3, texto4, texto5, texto6, texto7;
int textoAlpha = 0;
float textoSize = 5;
int textoIndex = 0;

void setup() {
  fuente = loadFont("SitkaSmall-Bold-48.vlw");
  textFont(fuente);
  textAlign(CENTER, TOP);
  size(640, 480);
  textSize(28);

  img0 = loadImage("img0.png");
  img1 = loadImage("img1.png");
  img2 = loadImage("img2.png");
  img3 = loadImage("img3.png");
  img4 = loadImage("img4.png");
  img5 = loadImage("img5.png");
  img6 = loadImage("img6.png");
  img7 = loadImage("img7.png");

  texto0 = "PRESIONA [X] PARA EMPEZAR";
  texto1 = "Tres hermanos cerditos deciden dejar la casa de su madre para buscar su propio camino y construir sus vidas en el bosque. Sin embargo, pronto se enteran de que en la zona ronda un lobo peligroso que tiene intenciones de comérselos.";
  texto2 = "Para protegerse, cada uno decide construir su propio hogar, pero con diferentes niveles de esfuerzo";
  texto3 = "El lobo hambriento llega al bosque y va a la casa del cerdito menor. Al ver que es de paja, el lobo llena sus pulmones de aire y, con un potente soplido, derriba la casa por completo.";
  texto4 = "El lobo sigue al cerdito hasta la casa de madera, donde se esconden los dos hermanos. Con más fuerza que antes, el lobo vuelve a soplar y soplar hasta que las tablas de madera ceden y la casa se cae.";
  texto5 = "El lobo llega a la casa de ladrillo, donde están los tres cerditos. Sopla con todas sus fuerzas una y otra vez, pero la casa no se mueve";
  texto6 = "El lobo decide trepar al techo para entrar por la chimenea. El lobo cae por la chimenea, se quema la cola y huye dando unos aullidos terribles para no volver jamás";
  texto7 = "Presiona [R] Para reiniciar";

  estado = 0;
}

void draw() {
  background(0);

  switch(estado) {
    case 0: escenaInicio();            break;
    case 1: escenaCreditosIniciales(); break;
    case 2: escenaEleccionEsfuerzo();  break;
    case 3: escenaCasaPaja();          break;
    case 4: escenaCasaMadera();        break;
    case 5: escenaCasaLadrillo();      break;
    case 6: escenaChimenea();          break;
    case 7: escenaFinal();             break;
  }
}


void escenaInicio() {
  image(img0, 0, 0, 640, 480);
  dibujarBoton("INICIAR", 250, 400, 140, 40);
  textSize(20);
  textoConSombra(texto0, 70, 350, 500, 50);
}

void escenaCreditosIniciales() {
  image(img1, 0, 0, 640, 480);
  int y = (int)(0 - (frameCount / 3.5) * 3);
  textoConSombra(texto1, 70, y, 500, 1000);
  if (y < -480) siguienteEstado();
}

void escenaEleccionEsfuerzo() {
  image(img2, 0, 0, 640, 480);
  int velocidadDeltexto = 300 / texto2.length();
  if (frameCount % velocidadDeltexto == 0 && textoIndex < texto2.length()) {
    textoIndex++;
  }
  textoConSombra(texto2.substring(0, textoIndex), 80, 200, 480, 255);
  if (frameCount > 400) {
    siguienteEstado();
  }
}

void escenaCasaPaja() {
  image(img3, 0, 0, 640, 480);
  if (textoAlpha < 255) textoAlpha += 2;
  textoConSombra(texto3, 60, 150, 520, 250, textoAlpha);
  if (textoAlpha >= 255 && frameCount > 200) siguienteEstado();
}

void escenaCasaMadera() {
  image(img4, 0, 0, 640, 480);
  int xTexto = constrain(-300 + (frameCount * 8), -300, 120);
  textoConSombra(texto4, xTexto, 150, 400, 250);
  if (frameCount > 240) {
    siguienteEstado();
  }
}

void escenaCasaLadrillo() {
  image(img5, 0, 0, 640, 480);

  float t = frameCount * 0.1; 
  float escala; 

  if (frameCount < 60) {
    escala = 1.0f - (float)exp(-3 * t) * (float)cos(5 * t); 
  } else {
    escala = 1.0f; 
  }

  pushMatrix();
  translate(320, 240); 
  scale(escala); 
  
  textoConSombra(texto5, -200, -50, 400, 150); 
  popMatrix();

  if (frameCount > 240) {
    siguienteEstado();
  }
}

void escenaChimenea() {
  image(img6, 0, 0, 640, 480);
  float yLaser = constrain(100 + (frameCount * 6), 100, 400);
  float altoVisible = constrain(yLaser - 150, 0, 250);
  if (altoVisible > 0) {
    textoConSombra(texto6, 120, 150, 400, altoVisible);
  }
  if (yLaser < 400) {
    stroke(0, 255, 200);
    strokeWeight(4);
    line(120, yLaser, 520, yLaser);
    noStroke();
  }
  if (frameCount > 240) {
    siguienteEstado();
  }
}

void escenaFinal() {
  image(img7, 0, 0, 640, 480);
  dibujarBoton("REINICIAR", 250, 400, 140, 40);
  textSize(20);
  textoConSombra(texto7, 70, 350, 500, 50);
}

void keyPressed() {
  if (estado == 0 && (key == 'x' || key == 'X')) {
    iniciarHistoria();
  }
  

  if (estado == 7 && (key == 'r' || key == 'R')) {
    reiniciarHistoria();
  }
}


void textoConSombra(String mensaje, float x, float y, float ancho, float alto) {
  textSize(24);
  fill(0);
  text(mensaje, x + 2, y + 2, ancho, alto);
  fill(255);
  text(mensaje, x, y, ancho, alto);
}

void textoConSombra(String mensaje, float x, float y, float ancho, float alto, float alfa) {
  textSize(24);
  fill(0, alfa);
  text(mensaje, x + 2, y + 2, ancho, alto);
  fill(255, alfa);
  text(mensaje, x, y, ancho, alto);
}

void mousePressed() {
  if (estado == 0 && mouseX > 250 && mouseX < 390 && mouseY > 400 && mouseY < 440) {
    iniciarHistoria();
  }

  if (estado == 7 && mouseX > 250 && mouseX < 390 && mouseY > 400 && mouseY < 440) {
    reiniciarHistoria();
  }
}

void iniciarHistoria() {
  estado = 1;
  frameCount = 0;
  textoIndex = 0;
  textoAlpha = 0;
  textoSize = 5;
}

void reiniciarHistoria() {
  estado = 0;
  frameCount = 0;
  textoIndex = 0;
  textoAlpha = 0;
  textoSize = 5;
}

void siguienteEstado() {
  estado++;
  frameCount = 0;
  textoIndex = 0;
  textoAlpha = 0;
  textoSize = 5;
}

void dibujarBoton(String texto, int x, int y, int ancho, int alto) {
  fill(255);
  rect(x, y, ancho, alto, 10);
  fill(0);
  textAlign(CENTER, CENTER);
  text(texto, x + ancho / 2, y + alto / 2);
}



    


   

   


 

 

  

  


   


   

  

  
