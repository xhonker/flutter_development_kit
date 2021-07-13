import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

extension TextSpanExtension on TextSpan {
  TextSpan style2(TextStyle style) {
    return this.copyWith(style: style);
  }

  TextSpan click(Function() _onTap) {
    return this.copyWith(onTap: _onTap);
  }

  TextSpan copyWith({TextStyle style, Function() onTap}) {
    return TextSpan(
      text: this.text,
      style: style ?? this.style,
      recognizer: TapGestureRecognizer()..onTap = onTap,
    );
  }
}
