// 使うフォント
PFont yuGothic90;
PFont yuGothic70;
PFont yuGothic50;
PFont yuGothic30;
PFont yuGothic15;
PFont helvetica;
// 使う画像
PImage dummy600;

// createSlides()でスライド全部を入れる
ArrayList<Slide> slides = new ArrayList<Slide>();
String slideTitle = "Processingで作ったスライド";
int slideNum = 0;  // 表示対象のスライド番号

boolean isKeyTyped = false;
boolean isSlideDrew = false;

final color backColor = color(240);
final color mainColor = color(0, 0, 70);
final color subColor1 = color(100);
final color subColor2 = color(200);

void setup() {
  fullScreen();
  noStroke();
  noCursor();
  imageMode(CENTER);
  frameRate(15);
  
  yuGothic90 = createFont("YuGo-Bold", 90, true);
  yuGothic70 = createFont("YuGo-Bold", 70, true);
  yuGothic50 = createFont("YuGo-Bold", 50, true);
  yuGothic30 = createFont("YuGo-Bold", 30, true);
  yuGothic15 = createFont("YuGo-Bold", 15, true);
  helvetica = createFont("Helvetica-Bold", 50, true);

  dummy600 = loadImage("dummy600.png");

  createSlides();
}

void createSlides() {
  // 表紙
  slides.add(new Slide(true, 0, slideTitle, "2019.12.14 ohayota"));
  // スライド1枚目
  Slide s1 = new Slide(false, 1, "テキストだけのスライド", "スライド例");
  s1.textField.texts.add(new Text("第1レベル", 1));
  s1.textField.texts.add(new Text("第2レベル", 2));
  s1.textField.texts.add(new Text("第3レベル", 3));
  s1.textField.texts.add(new Text("第2レベル", 2));
  s1.textField.texts.add(new Text("第3レベル", 3));
  s1.textField.texts.add(new Text("", 0));  // 空白行
  s1.textField.texts.add(new Text("第1レベル", 1));
  s1.textField.texts.add(new Text("第2レベル", 2));
  s1.textField.texts.add(new Text("第2レベル", 2));
  s1.textField.texts.add(new Text("第3レベル", 3));
  s1.textField.texts.add(new Text("第3レベル", 3));
  slides.add(s1);
  // スライド1枚目
  Slide s2 = new Slide(false, 2, "丸い画像を追加したスライド", "スライド例");
  s2.textField.texts.add(new Text("第1レベル", 1));
  s2.textField.texts.add(new Text("第2レベル", 2));
  s2.textField.texts.add(new Text("第3レベル", 3));
  s2.textField.texts.add(new Text("第2レベル", 2));
  s2.textField.texts.add(new Text("第3レベル", 3));
  s2.textField.texts.add(new Text("", 0));  // 空白行
  s2.textField.texts.add(new Text("第1レベル", 1));
  s2.textField.texts.add(new Text("第2レベル", 2));
  s2.textField.texts.add(new Text("第2レベル", 2));
  s2.textField.texts.add(new Text("第3レベル", 3));
  s2.textField.texts.add(new Text("第3レベル", 3));
  s2.textField.cImages.add(new CroppedImage(dummy600, s2.textField.fieldWidth/3,
                                            s2.textField.x + s2.textField.fieldWidth*7/10,
                                            s2.textField.fieldHeight/2, backColor, false));
  slides.add(s2);
  // スライド2枚目
  Slide s3 = new Slide(false, 3, "四角い画像を追加したスライド", "スライド例");
  s3.textField.texts.add(new Text("第1レベル", 1));
  s3.textField.texts.add(new Text("第2レベル", 2));
  s3.textField.texts.add(new Text("第3レベル", 3));
  s3.textField.texts.add(new Text("第2レベル", 2));
  s3.textField.texts.add(new Text("第3レベル", 3));
  s3.textField.texts.add(new Text("", 0));  // 空白行
  s3.textField.texts.add(new Text("第1レベル", 1));
  s3.textField.texts.add(new Text("第2レベル", 2));
  s3.textField.texts.add(new Text("第2レベル", 2));
  s3.textField.texts.add(new Text("第3レベル", 3));
  s3.textField.texts.add(new Text("第3レベル", 3));
  s3.textField.images.add(new Image(dummy600, s3.textField.fieldWidth/3, s3.textField.fieldWidth/3,
                                    s3.textField.x + s3.textField.fieldWidth*7/10,
                                    s3.textField.fieldHeight/2, backColor, false));
  slides.add(s3);
  // スライド4枚目
  Slide s4 = new Slide(false, 4, "描画する作品を追加したスライド", "スライド例");
  s4.textField.texts.add(new Text("第1レベル", 1));
  s4.textField.texts.add(new Text("第2レベル", 2));
  s4.textField.texts.add(new Text("第3レベル", 3));
  s4.textField.texts.add(new Text("第2レベル", 2));
  s4.textField.texts.add(new Text("第3レベル", 3));
  s4.textField.texts.add(new Text("", 0));  // 空白行
  s4.textField.texts.add(new Text("第1レベル", 1));
  s4.textField.texts.add(new Text("第2レベル", 2));
  s4.textField.texts.add(new Text("第2レベル", 2));
  s4.textField.texts.add(new Text("第3レベル", 3));
  s4.textField.texts.add(new Text("第3レベル", 3));
  s4.textField.canvases.add(new Canvas(1, s4.textField.fieldWidth/3, s4.textField.fieldWidth/3,
                                       s4.textField.x + s4.textField.fieldWidth*7/10,
                                       s4.textField.fieldHeight/2, backColor));
  slides.add(s4);
  // スライド5枚目...
}

void draw() {
  slides.get(slideNum).draw();
}
