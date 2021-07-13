import 'package:flutter/material.dart';

extension TextExtension on Text {
  Text maxLine([int maxLine = 1, TextOverflow overflow = TextOverflow.ellipsis]) {
    return this.copyWith(maxLines: maxLine, overflow: overflow);
  }

  Text style2(TextStyle style) {
    return this.copyWith(style: style);
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
