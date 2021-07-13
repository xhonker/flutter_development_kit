import 'package:flutter/material.dart';

class Adapt {
  static int _designWidth = 375;
  static late MediaQueryData mediaQuery;
  static late double _width;
  static late double _height;
  static late double _rpx;
  static late double _pixeRatio;
  static late EdgeInsets _padding;

  static init(BuildContext _, {int designWidth = 375}) {
    _designWidth = designWidth;
    mediaQuery = MediaQuery.of(_);
    _width = mediaQuery.size.width;
    _height = mediaQuery.size.height;
    _pixeRatio = mediaQuery.devicePixelRatio;
    _padding = mediaQuery.padding;
    initRpx();
  }

  static initRpx() {
    _rpx = _width / _designWidth;
  }

  static double px(double num) {
    // ignore: unnecessary_null_comparison
    if (_rpx == null) {
      initRpx();
    }
    return num * _rpx;
  }

  // one px
  static double get one => 1 / _pixeRatio;
  static double get w => _width;
  static double get h => _height;
  static EdgeInsets get padding => _padding;
}

double? adapt(double? v) {
  return v != null ? Adapt.px(v) : v;
}

double adaptDefalut(double? v, {double defalutValue = 0.0}) {
  return v != null ? Adapt.px(v) : defalutValue;
}
