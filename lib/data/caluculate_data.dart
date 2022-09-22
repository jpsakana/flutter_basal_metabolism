//シングルトン
class CaluculateData {
  static final CaluculateData _instance = CaluculateData._internal();
  factory CaluculateData() {
    return _instance;
  }

  CaluculateData._internal();

  //男性か
  bool isMale = false;
  //身長
  int height = 170;
  //体重
  int weight = 63;
  //年齢
  int age = 20;

  double resultKcl = 0.0;
}
