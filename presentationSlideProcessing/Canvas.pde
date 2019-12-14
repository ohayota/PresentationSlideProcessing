class Canvas {
  
  int workNum; // 描画する作品を指定する番号
  float sizeX;
  float sizeY;
  float x;
  float y;
  color back;
  boolean isBaseDrew = false;
  
  // work1用の変数
  float[] r = {750, 750, 750};
  
  Canvas(int workNum, float sizeX, float sizeY, float x, float y, color back) {
    this.workNum = workNum;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.x = x;
    this.y = y;
    this.back = back;
  }
  
  void resetValues() {
    isBaseDrew = false;
    // work1用の変数初期化
    for(int i = 0; i < r.length; i++) r[i] = 750;
    // work2用の変数初期化...
  }
  
  // 透明な円を重ねていく
  void work1() {
    noStroke();
    if (r[0] > 0) {
      float randomX = random(-sizeX/6, sizeX/6);
      float randomY = random(-sizeY/6, sizeY/6);
      fill(255, 30);
      ellipse(randomX, randomY, r[0], r[0]);
      r[0] -= 75;
    }
    if (r[1] > 0) {
      float randomX = random(-sizeX/6, sizeX/6);
      float randomY = random(-sizeY/6, sizeY/6);
      fill(0, 0, 0, 10);
      ellipse(randomX, randomY, r[1], r[1]);
      r[1] -= 90;
    }
    if (r[2] > 0) {
      float randomX = random(-sizeX/6, sizeX/6);
      float randomY = random(-sizeY/6, sizeY/6);
      fill(228, 0, 127, 20);
      ellipse(randomX, randomY, r[2], r[2]);
      fill(0, 161, 233, 20);
      ellipse(-randomX, -randomY, r[2], r[2]);
      r[2] -= 50;
    }
  }
  
  //void work2() {
  //  // 作品のプログラムを移植する(置換: width->sizeX & height->sizeY)
  //}
  
  void drawBase() {
    fill(0);
    noStroke();
    rect(x-sizeX/2, y-sizeY/2, sizeX, sizeY);
  }
  
  void drawFrame() {
    noFill();
    strokeWeight(5);
    stroke(mainColor);
    rect(x-sizeX/2, y-sizeY/2, sizeX, sizeY);
  }
  
  void draw() {
    if (!isBaseDrew) {
      drawBase();
      isBaseDrew = true;
    }
    drawFrame();
    // 表示する作品をcaseで指定する
    pushMatrix();
    translate(x, y);
    switch(workNum) {
      case 1:
        work1();
        break;
      //case 2:
      //  work2();
      //  break;
      default:
    }
    popMatrix();
  }
  
}
