import 'package:flutter/material.dart';

extension WidgetExtensioin on Widget {
  padSym(double horizontal, double vertical) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontal),
      child: this,
    );
  }

  align(Alignment alignment) {
    return Align(
      alignment: alignment,
      child: this,
    );
  }
}
