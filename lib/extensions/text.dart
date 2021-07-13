import 'package:flutter/material.dart';

extension TextExtension on Text {
  Text maxLine([int maxLine = 1, TextOverflow overflow = TextOverflow.ellipsis]) {
    return this.copyWith(maxLines: maxLine, overflow: overflow);
  }

  Text style2(TextStyle style) {
    return this.copyWith(style: style);
  }

  Text fontSize(double fontSize) {
    return this.copyWith(style: (this.style ?? TextStyle()).copyWith(fontSize: fontSize));
  }

  Text bold([FontWeight fontWeight = FontWeight.bold]) {
    return this.copyWith(style: (this.style ?? TextStyle()).copyWith(fontWeight: fontWeight));
  }

  Text color(Color color) {
    return this.copyWith(style: (this.style ?? TextStyle()).copyWith(color: color));
  }

  Text lineHeight(double height) {
    return this.copyWith(style: (this.style ?? TextStyle()).copyWith(height: height));
  }

  Text copyWith({TextStyle? style, int? maxLines, TextOverflow? overflow}) {
    return Text(
      this.data ?? '',
      style: style ?? this.style,
      maxLines: maxLines ?? this.maxLines,
      overflow: overflow ?? this.overflow,
    );
  }
}
