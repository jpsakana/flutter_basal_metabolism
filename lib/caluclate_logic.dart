import 'package:flutter/material.dart';

import 'data/caluculate_data.dart';
import 'constant.dart';

class Logic {
  final CaluculateData _data = CaluculateData();

  get getIsMale => _data.isMale;
  get getHeight => _data.height;

  void pressGender(bool isMale) {
    _data.isMale = isMale;
  }

  void setHeight(int heightValue) {
    _data.height = heightValue;
  }

  void setWeight(int weightValue) {
    _data.weight = weightValue;
  }

  void setAge(int ageValue) {
    _data.age = ageValue;
  }

  double getResult() {
    return _data.resultKcl;
  }

  void caluclate() {
    //男
    if (_data.isMale) {
      _data.resultKcl =
          caluclation(manWeightValue, manLengtValue, manAgeValue, manValue);
    }
    //女
    else {
      _data.resultKcl = caluclation(
          womanWeightValue, womanLengtValue, womanAgeValue, womanValue);
    }
  }

//カロリー計算
  double caluclation(double weightValue, double lengtValue, double ageValue,
      double maleValue) {
    return (weightValue * _data.weight) +
        (lengtValue * _data.height) -
        (ageValue * _data.age) +
        maleValue;
  }
}
