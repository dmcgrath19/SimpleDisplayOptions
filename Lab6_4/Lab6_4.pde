
ArrayList checkBoxList;
ArrayList radioButtonList;

PFont stdFont;
final int EVENT_BUTTON1=1;
final int EVENT_BUTTON2=2;
final int EVENT_BUTTON3=3;
final int EVENT_NULL=0;

color BackgroundColor = color(100);


void setup(){

  checkBox widget1, widget2, widget3;
  radioButton rb1, rb2, rb3;
  
  size(800, 500);
  stdFont=loadFont("TrebuchetMS-16.vlw"); textFont(stdFont);
  widget1=new checkBox(100, 100, 40, "check 1", color(0), stdFont, EVENT_BUTTON1);
  widget2=new checkBox(100, 200, 40, "check 2", color(150), stdFont, EVENT_BUTTON2);
  widget3=new checkBox(100, 300, 40, "check 3", color(200), stdFont, EVENT_BUTTON3);
  
  rb1=new radioButton(500, 100, 40, "option 1", color(0), stdFont, EVENT_BUTTON1);
  rb2=new radioButton(500, 200, 40, "option 2", color(150), stdFont, EVENT_BUTTON2);
  rb3=new radioButton(500, 300, 40, "option 3", color(200), stdFont, EVENT_BUTTON3);
  
  
  checkBoxList = new ArrayList();
  checkBoxList.add(widget1); checkBoxList.add(widget2); checkBoxList.add(widget3);
  
  radioButtonList = new ArrayList();
  radioButtonList.add(rb1); radioButtonList.add(rb2); radioButtonList.add(rb3);
  
  
}

void draw(){
  background(BackgroundColor);
  for(int i = 0; i<checkBoxList.size(); i++){
    Widget aWidget = (Widget) checkBoxList.get(i);
    aWidget.draw();
  }
  
    for(int i = 0; i<radioButtonList.size(); i++){
    Widget aWidget = (Widget) radioButtonList.get(i);
    aWidget.draw();
  }
  
}
