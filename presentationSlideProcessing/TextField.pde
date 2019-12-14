class TextField {

  float topBarHeight;
  float bottomBarHeight;
  float x;
  float y;
  float fieldWidth;
  float fieldHeight;
  ArrayList<CroppedImage> cImages;
  ArrayList<Image> images;
  ArrayList<Text> texts;
  ArrayList<Canvas> canvases;

  TextField(float topBarHeight, float bottomBarHeight, float marginX, float marginY) {
    this.topBarHeight = topBarHeight;
    this.bottomBarHeight = bottomBarHeight;
    this.x = marginX;
    this.y = topBarHeight + marginY;
    fieldWidth = width - marginX*2;
    fieldHeight = height - (y+bottomBarHeight+marginY);
    cImages = new ArrayList<CroppedImage>();
    images = new ArrayList<Image>();
    texts = new ArrayList<Text>();
    canvases = new ArrayList<Canvas>();
  }

  void drawImages() {
    for (CroppedImage img: cImages) img.draw();
    for (Image img: images) img.draw();
  }

  void drawTexts() {
    if (!texts.isEmpty()) {
      int textX = 0;
      int textY = 0;
      int beforeLevel = texts.get(0).level;
      for (int i = 0; i < texts.size(); i++) {
        Text t = texts.get(i);
        switch (t.level) {
          case 0:
            textX = 0;
            textY += height/17.5;
            break;
          case 1:
            textX = 0;
            t.draw(textX, textY);
            textY += height/15;
            break;
          case 2:
            if (beforeLevel == 3) {
              textX -= width/28;
            } else if (beforeLevel != 2) {
              textX += width/28;
            }
            t.draw(textX, textY);
            textY += height/17.5;
            break;
          case 3:
            if (beforeLevel != 3) textX += width/28;
            t.draw(textX, textY);
            textY += height/21;
            break;
          default:
        }
        beforeLevel = t.level;
      }
    }
  }
  
  void drawCanvases() {
    for (Canvas c: canvases) c.draw();
  }

  void draw() {
    pushMatrix();
    // TextField内での位置を設定しているため，TextFieldの左上を原点(0, 0)とする
    translate(x, y);
    drawTexts();
    drawImages();
    drawCanvases();
    popMatrix();
  }

}
