class Image {

  PImage image;
  float sizeX;
  float sizeY;
  float x;
  float y;
  color back;
  boolean isReflect;  // 上下左右を反転する必要があるか

  Image(PImage image, float sizeX, float sizeY, float x, float y, color back, boolean isReflect) {
    this.image = image;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.x = x;
    this.y = y;
    this.back = back;
    this.isReflect = isReflect;
  }

  void drawImage() {
    pushMatrix();
    if (isReflect) {
      translate(x, y);
      rotate(radians(180));
    } else {
      translate(x, y);
    }
    image(image, 0, 0, sizeX, sizeY);
    popMatrix();
  }

  void drawFrame() {
    noFill();
    strokeWeight(sizeY/100+2);
    stroke(mainColor);
    rect(x-sizeX/2, y-sizeY/2, sizeX, sizeY);
  }

  void draw() {
    if (!isSlideDrew) {
      drawImage();
      drawFrame();
    }
  }

}
