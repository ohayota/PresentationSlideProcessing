void keyPressed() {
  if (!isKeyTyped) {
    ArrayList<Canvas> canvases = slides.get(slideNum).textField.canvases;
    for (Canvas c: canvases) c.resetValues();
    switch (keyCode) {
      case LEFT:
        if (0 < slideNum) {
          loop();
          slideNum--;
        }
        break;
      case RIGHT:
        if (slideNum < slides.size()-1) {
          loop();
          slideNum++;
        }
        break;
      default:
    }
    isKeyTyped = true;
  }
  noLoop();
}

void keyReleased() {
  loop();
  isKeyTyped = false;
  isSlideDrew = false;
}
