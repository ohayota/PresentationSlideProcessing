class TopBar {

  float barHeight;
  String title;
  String subTitle;
  int number;

  TopBar(float barHeight, String title, String subTitle, int number) {
    this.barHeight = barHeight;
    this.title = title;
    this.subTitle = subTitle;
    this.number = number;
  }

  void drawBase() {
    noStroke();
    fill(mainColor);
    rect(0, 0, width, barHeight);
  }

  void drawTitle() {
    fill(backColor);
    textFont(yuGothic70);
    textSize(height/17.5);
    textAlign(LEFT, CENTER);
    text(title, width/33.6, barHeight/2);
  }

  void drawSubTitle() {
    fill(backColor);
    textFont(yuGothic30);
    textSize(height/35);
    textAlign(RIGHT, CENTER);
    text(subTitle, width*10.2/11.2, barHeight/2);
  }

  void drawNumber() {
    fill(backColor);
    textFont(helvetica);
    textSize(height/21);
    textAlign(RIGHT, CENTER);
    text(number, width*32.6/33.6, barHeight/2);
  }

  void draw() {
    if (!isSlideDrew) {
      drawBase();
      drawTitle();
      drawSubTitle();
      drawNumber();
    }
  }

}
