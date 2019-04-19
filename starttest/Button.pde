class Button {
  String label;
  float x;    // top left corner x position
  float y;    // top left corner y position
  float w;    // width of button
  float h;    // height of button
  int Color = 0;
  
  Button(String labelB, float xpos, float ypos, float widthB, float heightB) {
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
  }
  
  void Draw() {
    fill(Color);
    stroke(141);
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(255);
    text(label, x + (w / 2), y + (h / 2));
  }
  
  public void changecolor() {
    if (Color == 0) {
      Color = 066;
    }
    else {
      Color = 0;
    }
  }
  
  public void OnmouseClicked(float xpos, float ypos, float widthB, 
                            float heightB, int mousex, int mousey) {
  if(mousex >= xpos && mousex <=  xpos+widthB &&
     mousey >= ypos && mousey <= ypos+heightB) {
     changecolor();
   }
  }
  
  public void changeLabel(String label) {
    this.label = label;
  }
}
