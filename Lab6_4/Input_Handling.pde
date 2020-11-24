int currentEvent = 0;
void mousePressed(){
  int event;

  for(int i = 0; i<checkBoxList.size(); i++){
    checkBox aWidget = (checkBox) checkBoxList.get(i);
    event = aWidget.getEvent(mouseX,mouseY);
     aWidget.clicked();
     if(event != 0)
       aWidget.clicked();
  }
  
    for(int i = 0; i<radioButtonList.size(); i++){
    radioButton aWidget = (radioButton) radioButtonList.get(i);
    event = aWidget.getEvent(mouseX,mouseY);
    aWidget.clicked();
  }
  
}

void mouseMoved(){
  for(int i = 0; i< checkBoxList.size(); i++){
    Widget aWidget = (Widget) checkBoxList.get(i);
    if(aWidget.x <= mouseX && mouseX <= (aWidget.x + aWidget.width) && aWidget.y <= mouseY && mouseY <= aWidget.y + aWidget.height){
      aWidget.changeStroke(true);
    }
    else aWidget.changeStroke(false);
  }
}
