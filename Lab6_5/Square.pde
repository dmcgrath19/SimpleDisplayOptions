int red = color(179, 45, 0);
color green = color(153, 204, 0);
color blue = color(153, 204, 255);

class Square{
  int x, y;
  int r, g, b;
  int squareColor;
  
  Square(int x, int y){
    this.x = x; this.y = y;
    squareColor = 0;
    r = 45; g = 45; b = 45;
  }
  
  void changeColor(int newColor){
    squareColor = newColor;
  }
  
  void changingColor(int newCol){
    if(squareColor == 1)
      r = newCol;
    if(squareColor == 2)
      g = newCol;
    if(squareColor == 3)
      b = newCol;
  }
  
  void draw(){
    
    if(squareColor != 0){
        noStroke();
        fill(color(r, g, b));
        rect(x, y, 100, 100);
    }
  }
}
