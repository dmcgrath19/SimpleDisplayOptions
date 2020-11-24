public class checkBox extends Widget{
  int edge;
  boolean checked = false;
  
  
  checkBox(int x, int y, int edge, String label, color widgetColor, PFont widgetFont, int event){
    this.x=x; this.y=y; this.edge = edge;
    this.label=label; this.event=event;
    this.widgetColor=widgetColor; this.widgetFont=widgetFont;
    labelColor= color(255);
  }
  
  void draw(){
      fill(labelColor);
      text(label, x-20, y-20);
      
      if(checked){
        fill(widgetColor);
        rect(x,y,edge, edge);

      }
      
      else{
        stroke(widgetColor);
        fill(BackgroundColor);
         rect(x,y,edge, edge);
      }

  }
  
  void clicked(){
    if(mouseX >= x && mouseX <= x + edge && mouseY >= y && mouseY <= edge + y){
      if(checked) checked = false;
      else  checked = true;
  }
  }
}
