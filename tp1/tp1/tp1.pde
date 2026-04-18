// Botaro, Nahuel comision 5

PImage img;
void setup() {
  size(800, 400);
  background(#000000);
  img = loadImage("cesar.jpg");
}

void draw() {
  //FONDO
  background(20, 110, 210);
  //imagen de referencia
  image(img, 0, 0, 400, 400);

  // ESTATUA
  
  // CAPA
  fill(60, 100, 90);
  stroke(40, 80, 70);
  strokeWeight(1);
  beginShape();
  vertex(660, 200);
  vertex(710, 195);
  vertex(730, 220);
  vertex(720, 320);
  vertex(700, 370);
  vertex(660, 375);
  vertex(645, 340);
  vertex(648, 220);
  endShape(CLOSE);
  // TORSO Y ARMADURA
  fill(90, 145, 130);
  stroke(40, 80, 70);
  strokeWeight(1);
  beginShape();
  vertex(585, 195);
  vertex(705, 195);
  vertex(712, 270);
  vertex(700, 355);
  vertex(588, 355);
  vertex(572, 270);
  endShape(CLOSE);

  // DETALLES DEL TORSO
  fill(60, 100, 90);
  rect(597, 214, 36, 28, 3);
  fill(110, 165, 150);
  rect(599, 216, 26, 20, 2);

  fill(60, 100, 90);
  rect(654, 214, 36, 28, 3);
  fill(110, 165, 150);
  rect(656, 216, 26, 20, 2);

  fill(60, 100, 90);
  stroke(40, 80, 70);
  rect(602, 285, 85, 55, 3);

  fill(90, 145, 130);
  noStroke();
  ellipse(620, 297, 9, 9);
  rect(616, 303, 7, 15);

  ellipse(645, 297, 9, 9);
  rect(641, 303, 7, 15);

  ellipse(670, 297, 9, 9);

  rect(666, 303, 7, 15);
  fill(60, 100, 90);
  stroke(40, 80, 70);
  rect(584, 348, 122, 14, 3);

  // HOMBROS
  fill(90, 145, 130);
  stroke(40, 80, 70);
  strokeWeight(1);
  ellipse(585, 203, 32, 22);
  ellipse(705, 203, 32, 22);

  // TUNICA/FALDA
  fill(90, 145, 130);
  rect(588, 360, 12, 40, 2);
  fill(60, 100, 90);
  rect(602, 360, 12, 40, 2);
  fill(90, 145, 130);
  rect(616, 360, 12, 40, 2);
  fill(60, 100, 90);
  rect(630, 360, 12, 40, 2);
  fill(90, 145, 130);
  rect(644, 360, 12, 40, 2);
  fill(60, 100, 90);
  rect(658, 360, 12, 40, 2);
  fill(90, 145, 130);
  rect(672, 360, 12, 40, 2);
  fill(60, 100, 90);
  rect(686, 360, 12, 40, 2);




  //
  fill(90, 145, 130);
  stroke(40, 80, 70);
  rect(628, 148, 34, 52, 4);
  
  // PELO
  fill(60, 100, 90);
  noStroke();
  ellipse(618, 110, 13, 16);
  ellipse(626, 106, 13, 16);
  ellipse(634, 103, 13, 16);
  ellipse(642, 102, 13, 16);
  ellipse(650, 103, 13, 16);
  ellipse(658, 106, 13, 16);
  ellipse(666, 110, 13, 16);
  ellipse(673, 115, 13, 16);

  // CABEZA
  fill(90, 145, 130);
  stroke(40, 80, 70);
  strokeWeight(1);
  ellipse(645, 135, 56, 66);

  //CARA
  fill(60, 100, 90);
  noStroke();
  ellipse(633, 129, 9, 6);
  ellipse(657, 129, 9, 6);

  stroke(60, 100, 90);
  strokeWeight(2);
  line(645, 133, 643, 145);

  noFill();
  stroke(60, 100, 90);
  strokeWeight(1.5);
  beginShape();
  vertex(638, 152);
  vertex(645, 156);
  vertex(652, 152);
  endShape();




  // BRAZO IZQUIERDO
  stroke(40, 80, 70);
  strokeWeight(24);
  line(585, 210, 448, 88);
  stroke(90, 145, 130);
  strokeWeight(21);
  line(585, 210, 448, 88);

  // MANO
  fill(90, 145, 130);
  stroke(40, 80, 70);
  strokeWeight(1);
  ellipse(444, 85, 22, 18);

  stroke(90, 145, 130);
  strokeWeight(8);
  line(440, 80, 428, 67);
  
  stroke(40, 80, 70);
  strokeWeight(2);
  line(440, 80, 428, 67);

  stroke(90, 145, 130);
  strokeWeight(7);
  line(445, 80, 436, 69);

  stroke(40, 80, 70);
  strokeWeight(2);
  line(445, 80, 436, 69);

  stroke(90, 145, 130);
  strokeWeight(7);
  line(450, 82, 443, 73);

  stroke(40, 80, 70);
  strokeWeight(2);
  line(450, 82, 443, 73);

  stroke(90, 145, 130);
  strokeWeight(6);
  line(454, 85, 449, 77);

  stroke(40, 80, 70);
  strokeWeight(2);
  line(454, 85, 449, 77);
  
  //BRAZO DERECHO
  stroke(40, 80, 70);
  strokeWeight(22);
  line(705, 210, 695, 300);
  stroke(90, 145, 130);
  strokeWeight(19);
  line(705, 210, 695, 300);
  
  //LANZA
  stroke(60, 100, 90);
  strokeWeight(5);
  line(695, 178, 712, 395);
  fill(110, 165, 150);
  noStroke();
  ellipse(695, 174, 11, 20);


  fill(0);
  textSize(30);
  text(mouseX + " - " + mouseY, mouseX, mouseY);
}
