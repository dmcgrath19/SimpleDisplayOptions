class Widget {
  int x, y, width, height, radius;
  String label; int event;
  color widgetColor, labelColor;
  PFont widgetFont;
  boolean clicked = false;
  boolean stroke = false;

  Widget(){
    
  }

  Widget(int x, int y, int radius, String label, color widgetColor, PFont widgetFont, int event){
    this.x=x; this.y=y; this.radius = radius;
    this.label=label; this.event=event;
    this.widgetColor=widgetColor; this.widgetFont=widgetFont;
    labelColor= color(255);
   
  }

  Widget(int x,int y, int width, int height, String label,
  color widgetColor, PFont widgetFont, int event){
    this.x=x; this.y=y; this.width = width; this.height= height;
    this.label=label; this.event=event;
    this.widgetColor=widgetColor; this.widgetFont=widgetFont;
    labelColor= color(255);
  }
  
  void changeStroke(boolean newStroke){
    stroke = newStroke;
  }

  void draw(){
    if(stroke) stroke(255);
    else stroke(0);
    fill(widgetColor);
    rect(x,y,width,height);
    fill(labelColor);
    text(label, x+10, y+height-10);
  }
  
  int getEvent(int mX, int mY){
    if(mX>x && mX < x+width && mY >y && mY <y+height){
      return event;
    }
    return EVENT_NULL;
  }
}
