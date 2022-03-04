objeto miobjeto1;

void setup() {
  size(680,680);
  // Parameters go inside the parentheses when the object is constructed.
  miobjeto1 = new objeto(color(255,0,0),100,100,10,10,255,150,150); 
}

void draw() {
  background(0);
  miobjeto1.mover();
  miobjeto1.mostrar();
}

// Even though there are multiple objects, we still only need one class. 
// No matter how many cookies we make, only one cookie cutter is needed.
class objeto { 
  color c;
  float xpos;
  float ypos;
  int xvelocidad;
  int yvelocidad;
  int Red;
  int Green;
  int Blue;
  

  // The Constructor is defined with arguments.
  objeto(color tempC, float tempxpos, float tempypos, int tempXvelocidad, int tempYvelocidad, int R, int G, int B) { 
    c = tempC;
    xpos = tempxpos;
    ypos = tempypos;
    xvelocidad = tempXvelocidad;
    yvelocidad = tempYvelocidad;
    Red = R;
    Green = G;
    Blue = B;
  }

  void mostrar() {
    stroke(0);
    fill(c);
    rectMode(CENTER);
    rect(xpos,ypos,100,100);
    fill(255, 255, 255);
    circle(xpos-15,ypos-10, 20);
    fill(255, 255, 255);
    circle(xpos+15,ypos-10, 20);
    fill(0, 0, 0);
    circle(xpos-15,ypos-10, 5);
    fill(0, 0, 0);
    circle(xpos+15,ypos-10, 5);
    fill (0);
    ellipse(xpos, ypos+30, 30, 30);
  }

int cont = 0;
  void mover() {
   if ((keyPressed == true) && (key == 'd')){
     xpos = xpos + xvelocidad;
    if (xpos > width) {
    }
   }
 
   else if ((keyPressed == true) && (key == 's')){
     ypos = ypos + yvelocidad;
    if (ypos > height) {
    }
   }
   

    else if ((keyPressed == true) && (key == 'a')){
    xpos = xpos - xvelocidad;
    if (xpos < -width + width) {
      }
    }
    
    else if ((keyPressed == true) && (key == 'w')){
     ypos = ypos - yvelocidad;
    if (ypos < -height + height) {

      }
    }
    
      if (xpos > 647) { //Derecha Rosa
      xpos = 650;
      Red = 255;
      Green = 192;
      Blue = 203;
      background( Red, Green, Blue);      
    }
    
      if (ypos > 650) { // abajo cafe
     ypos = 645;
     Red = 141; 
     Green = 73;
     Blue = 37;
     background( Red, Green, Blue);
    }
    
    if (xpos < 30) { //Izquierda Morado 
      xpos = 26;
      Red = 126;
      Green = 0;
      Blue = 255;
     background( Red, Green, Blue);      
    }
    
    if (ypos < 30) { //Arriba amarillo
      ypos = 35;
      Red = 255; 
      Green = 255;
      Blue = 0;
     background( Red, Green, Blue);
    }

    background(Red, Green, Blue);
      
        }
      }
      
     
