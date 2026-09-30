  void setup()
  {
      size(800, 900);
      noLoop();
  }
  void draw()
  {
    background(220);
    int total = 0;
      for(int i = 0; i < 8; i++){
        for(int j = 0; j < 8; j++){
          int x = i * 100;
          int y = j * 100;
          
          Die die = new Die(x, y);
          die.show();
          
          total += die.number;
        }
      }
      
      textSize(28);
      text("Total: " + total, width / 2, 850);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      private int x;
      private int y;
      private int number;
      
      Die(int x, int y) //constructor
      {
          this.x = x;
          this.y = y;
          roll();
      }
      void roll()
      {
          number = (int)(Math.random() * 6) + 1;
      }
      void show()
      {
          fill((int)(Math.random() * 256),
          (int)(Math.random() * 256),
          (int)(Math.random() * 256));
          rect(x, y, 100, 100);
          int left = x + 25;
          int center = x + 50;
          int right = x + 75;
          
          int top = y + 25;
          int middle = y + 50;
          int bottom = y + 75;
          
          fill((int)(Math.random() * 256),
          (int)(Math.random() * 256),
          (int)(Math.random() * 256));
          if(number == 1){
            ellipse(center, middle, 15, 15);
          }
          else if(number == 2){
            ellipse(left, top, 15, 15);
            ellipse(right, bottom, 15, 15);
          }
          else if(number == 3){
            ellipse(left, top, 15, 15);
            ellipse(center, middle, 15, 15);
            ellipse(right, bottom, 15, 15);
          }
          else if(number == 4){
            ellipse(left, top, 15, 15);
            ellipse(right, top, 15, 15);
            ellipse(left, bottom, 15, 15);
            ellipse(right, bottom, 15, 15);
          }
          else if(number == 5){
            ellipse(left, top, 15, 15);
            ellipse(right, top, 15, 15);
            ellipse(center, middle, 15, 15);
            ellipse(left, bottom, 15, 15);
            ellipse(right, bottom, 15, 15);
          }
          else if(number == 6){
            ellipse(left, top, 15, 15);
            ellipse(left, middle, 15, 15);
            ellipse(left, bottom, 15, 15);
            
            ellipse(right, top, 15, 15);
            ellipse(right, middle, 15, 15);
            ellipse(right, bottom, 15, 15);
          }
          
      }
  }
