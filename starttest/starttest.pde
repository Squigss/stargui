int Colour = 0;
int width = 700;
int height = 900;
Button start  = new Button ("Start Game", 500, 30, 100, 40);

Button transition1  = new Button ("If enemy is\n" + "more than 2\n" +
                      "star meter away", width*0.75, height*0.3, 120, 55);
Button transition2  = new Button ("If enemy is\n" + "more than 5\n" + 
                      "star meters away\n", width*0.75, height*0.6, 120, 55);
Button transition3  = new Button ("If fuel is\n" + "less than 1\n" +
                      "gallons of stardust", width*0.43, height*0.82, 120, 55);
Button transition4  = new Button ("If enemy is\n" + "less than 1\n" +
                      "star meter away", width*0.1, height*0.6, 120, 55);
Button transition5  = new Button ("If enemy is\n" + "less than 2\n" +
                      "star meter away", width*0.1, height*0.3, 120, 55);

Star star1 = new Star(0, 0, 30, 70, 5, width*0.5, height*0.25);
Star star2 = new Star(0, 0, 30, 70, 5, width*0.8, height*0.45);
Star star3 = new Star(0, 0, 30, 70, 5, width*0.2, height*0.45);
Star star4 = new Star(0, 0, 30, 70, 5, width*0.30, height*0.72);
Star star5 = new Star(0, 0, 30, 70, 5, width*0.7, height*0.72);

Label label1 = new Label(255, "attack", width*0.5, height*0.25);
Label label2 = new Label(255, "orbit", width*0.8, height*0.45);
Label label3 = new Label(255, "defence", width*0.2, height*0.45);
Label label4 = new Label(255, "re-fuel", width*0.30, height*0.72);
Label label5 = new Label(255, "seek", width*0.7, height*0.72);

String labelToSwap = null;
boolean labels[] = {false, false, false, false, false};

String buttonToSwap = null;
boolean buttons[] = {false, false, false, false, false};

void setup() {
  size(700, 900);
}

void draw() {
  background(102);
  start.Draw();
  transition1.Draw();
  transition2.Draw();
  transition3.Draw();
  transition4.Draw();
  transition5.Draw();
  
  star1.Draw(); 
  star2.Draw();  
  star3.Draw(); 
  star4.Draw();  
  star5.Draw();
  
  label1.Draw();
  label2.Draw();
  label3.Draw();
  label4.Draw();
  label5.Draw();
}



public void mouseClicked() {
  //LABEL SWAPS FOR STATES
  //label1 swap - stars
   if (mouseX >= width*0.45 && mouseX <=  width*0.55 &&
       mouseY >= height*0.20 && mouseY <= height*0.30) {
     swapLabel1();
  }
  //label3 swap - stars
  else if (mouseX >= width*0.20 && mouseX <=  width*0.30 &&
       mouseY >= height*0.40 && mouseY <= height*0.50) {
     swapLabel3();
 
  }
  //swapping label2 - stars
  else if (mouseX >= width*0.75 && mouseX <=  width*0.85 &&
       mouseY >= height*0.40 && mouseY <= height*0.50) {
   swapLabel2();
  }
  //swapping label4 - stars
  else if (mouseX >= width*0.25 && mouseX <=  width*0.35 &&
       mouseY >= height*0.65 && mouseY <= height*0.75) {
     swapLabel4();
  }
  //swapping for label5 - stars
  else if (mouseX >= width*0.65 && mouseX <=  width*0.75 &&
       mouseY >= height*0.65 && mouseY <= height*0.75) {
    swapLabel5();
  }
  

                      
  //LABEL SWAPS FOR TRANSITIONS
  else if (mouseX >= width*0.75 && mouseX <=  width*0.75+120 &&
       mouseY >= height*0.3 && mouseY <= height*0.3+55) {
    swapButton1();
  }
  else if (mouseX >= width*0.75 && mouseX <=  width*0.75+120 &&
       mouseY >= height*0.6 && mouseY <= height*0.6+55) {
    swapButton2();
  }
  else if (mouseX >= width*0.43 && mouseX <=  width*0.43 +120 &&
       mouseY >= height*0.82 && mouseY <= height*0.82 +55) {
    swapButton3();
  }
  else if (mouseX >= width*0.1 && mouseX <=  width*0.1+120 &&
       mouseY >= height*0.6 && mouseY <= height*0.6 +55) {
    swapButton4();
  }
  else if (mouseX >= width*0.1 && mouseX <=  width*0.1+120 &&
       mouseY >= height*0.3 && mouseY <= height*0.3+55) {
    swapButton5();
  }
  
}


//swap button1
public void swapButton1() {
         if (buttonToSwap == null) {
         buttonToSwap = transition1.label;
         transition1.changecolor();
         System.out.println(buttonToSwap);
         buttons[0] = true;
       }
       else {    
         for (int i=0; i <=4; i++) {
           if (buttons[1] == true) {
             transition2.changeLabel(transition1.label);
             transition1.changeLabel(buttonToSwap);
             transition2.changecolor();
             
             buttons[1] = false;
             buttonToSwap = null;
           }
           else if (buttons[2] == true) {
             transition3.changeLabel(transition1.label);
             transition1.changeLabel(buttonToSwap);
             transition3.changecolor();
             buttons[2] = false;
             labelToSwap = null;
           }
           else if (buttons[3] == true) {
             transition4.changeLabel(transition1.label);
             transition1.changeLabel(buttonToSwap);
             transition4.changecolor();
             buttons[3] = false;
             buttonToSwap = null;
           }
           else if (buttons[4] == true) {
             transition5.changeLabel(transition1.label);
             transition1.changeLabel(buttonToSwap);
             transition5.changecolor();
             buttons[4] = false;
             buttonToSwap = null;
           }
         }
       } 
}


public void swapButton3() {
        if (buttonToSwap == null) {
         buttonToSwap = transition3.label;
         transition3.changecolor();
         buttons[2] = true;
         System.out.println(buttonToSwap);
       }
       else {    
         for (int i=0; i <=4; i++) {
           if (buttons[0] == true) {
             System.out.print(buttonToSwap);
             System.out.println(transition3.label);
             transition1.changeLabel(transition3.label);
             transition3.changeLabel(buttonToSwap);
             star1.changecolor();
             buttons[0] = false;
             buttonToSwap = null;
           }
           else if (buttons[1] == true) {
             transition2.changeLabel(transition3.label);
             transition3.changeLabel(buttonToSwap);
             star2.changecolor();
             buttons[1] = false;
             buttonToSwap = null;
           }
           else if (buttons[3] == true) {
             transition4.changeLabel(transition3.label);
             transition3.changeLabel(buttonToSwap);
             star4.changecolor();
             buttons[3] = false;
             buttonToSwap = null;
           }
           else if (buttons[4] == true) {
             transition5.changeLabel(transition3.label);
             transition3.changeLabel(buttonToSwap);
             star5.changecolor();
             buttons[4] = false;
             buttonToSwap = null;
           }
         }
       } 
}

public void swapButton2() {
       if (buttonToSwap == null) {
         buttonToSwap = transition2.label;
         transition2.changecolor();
         buttons[1] = true;
         System.out.println(buttonToSwap);
       }
       else {    
         for (int i=0; i <=4; i++) {
           if (buttons[0] == true) {
             transition1.changeLabel(transition2.label);
             transition2.changeLabel(buttonToSwap);
             star1.changecolor();       
             buttons[0] = false;
             buttonToSwap = null;
           }
           else if (buttons[2] == true) {
             transition3.changeLabel(transition2.label);
             transition2.changeLabel(buttonToSwap);
             star3.changecolor();
             buttons[2] = false;
             buttonToSwap = null;
           }
           else if (buttons[3] == true) {
             transition4.changeLabel(transition2.label);
             transition2.changeLabel(buttonToSwap);
             star4.changecolor();
             buttons[3] = false;
             buttonToSwap = null;
           }
           else if (buttons[4] == true) {
             transition5.changeLabel(transition2.label);
             transition2.changeLabel(buttonToSwap);
             star5.changecolor();
             buttons[4] = false;
             buttonToSwap = null;
           }
         }
       }
}
public void swapButton4() {
        if (buttonToSwap == null) {
         buttonToSwap = transition4.label;
         transition4.changecolor();
         buttons[3] = true;
         System.out.println(buttonToSwap);
       }
       else {    
         for (int i=0; i <=4; i++) {
           if (buttons[0] == true) {
             transition1.changeLabel(transition4.label);
             transition4.changeLabel(buttonToSwap);
             star1.changecolor();
             buttons[0] = false;
             buttonToSwap = null;
           }
           else if (buttons[1] == true) {
             transition2.changeLabel(transition4.label);
             transition4.changeLabel(buttonToSwap);
             star2.changecolor();
             buttons[1] = false;
             buttonToSwap = null;
           }
           else if (buttons[2] == true) {
             transition3.changeLabel(transition4.label);
             transition4.changeLabel(buttonToSwap);
             star3.changecolor();
             buttons[2] = false;
             buttonToSwap = null;
           }
           else if (buttons[4] == true) {
             transition5.changeLabel(transition4.label);
             transition4.changeLabel(buttonToSwap);
             star5.changecolor();
             buttons[4] = false;
             buttonToSwap = null;
           }
         }
       } 
}
public void swapButton5() {
     if (buttonToSwap == null) {
         buttonToSwap = transition5.label;
         transition5.changecolor();
         buttons[4] = true;
         System.out.println(buttonToSwap);
       }
       else {    
         for (int i=0; i <=4; i++) {
           if (buttons[0] == true) {
             transition1.changeLabel(transition5.label);
             transition5.changeLabel(buttonToSwap);
             star1.changecolor();
             buttons[0] = false;
             buttonToSwap = null;
           }
           else if (buttons[1] == true) {
             transition2.changeLabel(transition5.label);
             transition5.changeLabel(buttonToSwap);
             star2.changecolor();
             buttons[1] = false;
             buttonToSwap = null;
           }
           else if (buttons[2] == true) {
             transition3.changeLabel(transition5.label);
             transition5.changeLabel(buttonToSwap);
             star3.changecolor();
             buttons[2] = false;
             buttonToSwap = null;
           }
           else if (buttons[3] == true) {
             transition4.changeLabel(transition5.label);
             transition5.changeLabel(buttonToSwap);
             star4.changecolor();
             buttons[3] = false;
             buttonToSwap = null;
           }
         }
       }  
  }


public void swapLabel1() {
         if (labelToSwap == null) {
         labelToSwap = label1.label;
         star1.changecolor();
         System.out.println(labelToSwap);
         labels[0] = true;
       }
       else {    
         for (int i=0; i <=4; i++) {
           if (labels[1] == true) {
             label2.changeLabel(label1.label);
             label1.changeLabel(labelToSwap);
             star2.changecolor();
             
             labels[1] = false;
             labelToSwap = null;
           }
           else if (labels[2] == true) {
             label3.changeLabel(label1.label);
             label1.changeLabel(labelToSwap);
             star3.changecolor();
             labels[2] = false;
             labelToSwap = null;
           }
           else if (labels[3] == true) {
             label4.changeLabel(label1.label);
             label1.changeLabel(labelToSwap);
             star4.changecolor();
             labels[3] = false;
             labelToSwap = null;
           }
           else if (labels[4] == true) {
             label5.changeLabel(label1.label);
             label1.changeLabel(labelToSwap);
             star5.changecolor();
             labels[4] = false;
             labelToSwap = null;
           }
         }
       } 
}


public void swapLabel3() {
        if (labelToSwap == null) {
         labelToSwap = label3.label;
         star3.changecolor();
         labels[2] = true;
         System.out.println(labelToSwap);
       }
       else {    
         for (int i=0; i <=4; i++) {
           if (labels[0] == true) {
             System.out.print(labelToSwap);
             System.out.println(label3.label);
             label1.changeLabel(label3.label);
             label3.changeLabel(labelToSwap);
             star1.changecolor();
             labels[0] = false;
             labelToSwap = null;
           }
           else if (labels[1] == true) {
             label2.changeLabel(label3.label);
             label3.changeLabel(labelToSwap);
             star2.changecolor();
             labels[1] = false;
             labelToSwap = null;
           }
           else if (labels[3] == true) {
             label4.changeLabel(label3.label);
             label3.changeLabel(labelToSwap);
             star4.changecolor();
             labels[3] = false;
             labelToSwap = null;
           }
           else if (labels[4] == true) {
             label5.changeLabel(label3.label);
             label3.changeLabel(labelToSwap);
             star5.changecolor();
             labels[4] = false;
             labelToSwap = null;
           }
         }
       } 
}

public void swapLabel2() {
              if (labelToSwap == null) {
         labelToSwap = label2.label;
         star2.changecolor();
         labels[1] = true;
         System.out.println(labelToSwap);
       }
       else {    
         for (int i=0; i <=4; i++) {
           if (labels[0] == true) {
             label1.changeLabel(label2.label);
             label2.changeLabel(labelToSwap);
             star1.changecolor();       
             labels[0] = false;
             labelToSwap = null;
           }
           else if (labels[2] == true) {
             label3.changeLabel(label2.label);
             label2.changeLabel(labelToSwap);
             star3.changecolor();
             labels[2] = false;
             labelToSwap = null;
           }
           else if (labels[3] == true) {
             label4.changeLabel(label2.label);
             label2.changeLabel(labelToSwap);
             star4.changecolor();
             labels[3] = false;
             labelToSwap = null;
           }
           else if (labels[4] == true) {
             label5.changeLabel(label2.label);
             label2.changeLabel(labelToSwap);
             star5.changecolor();
             labels[4] = false;
             labelToSwap = null;
           }
         }
       }
}
public void swapLabel4() {
        if (labelToSwap == null) {
         labelToSwap = label4.label;
         star4.changecolor();
         labels[3] = true;
         System.out.println(labelToSwap);
       }
       else {    
         for (int i=0; i <=4; i++) {
           if (labels[0] == true) {
             label1.changeLabel(label4.label);
             label4.changeLabel(labelToSwap);
             star1.changecolor();
             labels[0] = false;
             labelToSwap = null;
           }
           else if (labels[1] == true) {
             label2.changeLabel(label4.label);
             label4.changeLabel(labelToSwap);
             star2.changecolor();
             labels[1] = false;
             labelToSwap = null;
           }
           else if (labels[2] == true) {
             label3.changeLabel(label4.label);
             label4.changeLabel(labelToSwap);
             star3.changecolor();
             labels[2] = false;
             labelToSwap = null;
           }
           else if (labels[4] == true) {
             label5.changeLabel(label4.label);
             label4.changeLabel(labelToSwap);
             star5.changecolor();
             labels[4] = false;
             labelToSwap = null;
           }
         }
       } 
}
public void swapLabel5() {
              if (labelToSwap == null) {
         labelToSwap = label5.label;
         star5.changecolor();
         labels[4] = true;
         System.out.println(labelToSwap);
       }
       else {    
         for (int i=0; i <=4; i++) {
           if (labels[0] == true) {
             label1.changeLabel(label5.label);
             label5.changeLabel(labelToSwap);
             star1.changecolor();
             labels[0] = false;
             labelToSwap = null;
           }
           else if (labels[1] == true) {
             label2.changeLabel(label5.label);
             label5.changeLabel(labelToSwap);
             star2.changecolor();
             labels[1] = false;
             labelToSwap = null;
           }
           else if (labels[2] == true) {
             label3.changeLabel(label5.label);
             label5.changeLabel(labelToSwap);
             star3.changecolor();
             labels[2] = false;
             labelToSwap = null;
           }
           else if (labels[3] == true) {
             label4.changeLabel(label5.label);
             label5.changeLabel(labelToSwap);
             star4.changecolor();
             labels[3] = false;
             labelToSwap = null;
           }
         }
       }  
  }
