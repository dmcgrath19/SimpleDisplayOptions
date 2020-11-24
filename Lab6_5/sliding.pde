public class SlidingWidget extends Widget{
  
  int  currentNum = -1;
  
  SlidingWidget(int x,int y, int width, int height, String label,
  color widgetColor, PFont widgetFont, int event){
    this.x=x; this.y=y; this.width = width; this.height= height;
    this.label=label; this.event=event;
    this.widgetColor=widgetColor; this.widgetFont=widgetFont;
    labelColor= color(255);
    
  }
  
    void draw(){
    if(stroke) stroke(255);
    else stroke(0);
    fill(widgetColor);
    rect(x,y,width,height);
    fill(labelColor);
    text(label, x+10, y+height-10);
    
    if(currentNum != -1)
    text(currentNum, x+ width/3, y-10);
  }
  
}
