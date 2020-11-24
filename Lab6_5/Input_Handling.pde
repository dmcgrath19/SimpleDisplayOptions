float oldX = 0;
float margin = 100;


void mousePressed(){
  int event;

  for(int i = 0; i<widgetList.size(); i++){
    Widget aWidget = (Widget) widgetList.get(i);
    event = aWidget.getEvent(mouseX,mouseY);
     
     color newColor;
     if(event != 0)
     square.changeColor(event);
  }
}

void mouseMoved(){
  for(int i = 0; i< widgetList.size(); i++){
    Widget aWidget = (Widget) widgetList.get(i);
    if(aWidget.x <= mouseX && mouseX <= (aWidget.x + aWidget.width) && aWidget.y <= mouseY && mouseY <= aWidget.y + aWidget.height){
      aWidget.changeStroke(true);
    }
    else aWidget.changeStroke(false);
  }
}


void mouseDragged(){
      float currentX = mouseX;
  if(oldX == 0)
    oldX = mouseX;
  if(slidingWidget.x <= mouseX && mouseX <= (slidingWidget.x + slidingWidget.width) && slidingWidget.y <= mouseY && mouseY <= slidingWidget.y + slidingWidget.height
      && slidingWidget.x <= SCREENX - margin - slidingWidget.width && slidingWidget.x >= margin){
        float newSum = currentX - oldX; 
        if(newSum + slidingWidget.x <= margin)
          slidingWidget.x = (int)margin;
         else if (newSum +slidingWidget.x >= SCREENX - margin - slidingWidget.width)
           slidingWidget.x = (int)(SCREENX - margin - slidingWidget.width);
         else
         slidingWidget.x += newSum;
    oldX = currentX;
    slidingWidget.currentNum = (int)(( slidingWidget.x - margin) /10);
    square.changingColor((int)(slidingWidget.currentNum * 2.55));
  }
   
  
}

void mouseReleased(){
  oldX = 0;
}
