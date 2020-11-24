public class radioButton extends Widget{
  boolean clicked = false;
  radioButton(int x, int y, int radius, String label, color widgetColor, PFont widgetFont, int event){
    this.x=x+15; this.y=15+y; this.radius = radius;
    this.label=label; this.event=event;
    this.widgetColor=widgetColor; this.widgetFont=widgetFont;
    labelColor= color(255);
  }
  
  void draw(){
    fill(labelColor);
      text(label, x-35, y-35);
      
      if(event == currentEvent){
        fill(widgetColor);
        ellipse(x,y,radius, radius);

      }
      
      else{
        stroke(widgetColor);
        fill(BackgroundColor);
         ellipse(x,y,radius, radius);
      }
  }
  
  void clicked(){
    if(mouseX >= x - radius && mouseX <= x + radius && mouseY >= y - radius && mouseY <= radius+ y){
      currentEvent = event;
    }
}
}
