ArrayList widgetList;
PFont stdFont;
final int EVENT_BUTTON1=1;
final int EVENT_BUTTON2=2;
final int EVENT_BUTTON3=3;
final int EVENT_NULL=0;
SlidingWidget slidingWidget;

final int SCREENX = 1300;
final int SCREENY = 500;

Square square;

void setup(){

  Widget widget1, widget2, widget3;

  size(1300, 500);
  stdFont=loadFont("TrebuchetMS-16.vlw"); textFont(stdFont);
  widget1=new Widget(100, 100, 100, 40, "red", color(220), stdFont, EVENT_BUTTON1);
  widget2=new Widget(100, 200, 100, 40, "green", color(150), stdFont, EVENT_BUTTON2);
  widget3=new Widget(100, 300, 100, 40, "blue", color(50), stdFont, EVENT_BUTTON3);
  
  slidingWidget = new SlidingWidget(350, 400, 100, 50, "sliding", color(200), stdFont, EVENT_NULL);
  
  widgetList = new ArrayList();
  widgetList.add(widget1); widgetList.add(widget2); widgetList.add(widget3); //widgetList.add(slidingWidget);
  
  square = new Square(450, 180);
}

void draw(){

  background(0);
  for(int i = 0; i<widgetList.size(); i++){
    Widget aWidget = (Widget) widgetList.get(i);
    aWidget.draw();
  }
  square.draw();
  
  slidingWidget.draw();
}
