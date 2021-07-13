import 'package:flutter/material.dart';
import 'package:flutter_development_kit/flutter_development_kit.dart';

extension ListWidgetExtension on List<Widget> {
  Column toColumn({ListAlignment alignment = ListAlignment.START_START, MainAxisSize mainAxisSize = MainAxisSize.max}) {
    return Column(
      mainAxisAlignment: alignment.main,
      crossAxisAlignment: alignment.cross,
      mainAxisSize: mainAxisSize,
      children: this,
    );
  }

  Row toRow({ListAlignment alignment = ListAlignment.START_START, MainAxisSize mainAxisSize = MainAxisSize.max}) {
    return Row(
      mainAxisAlignment: alignment.main,
      crossAxisAlignment: alignment.cross,
      mainAxisSize: mainAxisSize,
      children: this,
    );
  }

  Stack toStack({Clip clipBehavior = Clip.hardEdge, AlignmentGeometry alignment = AlignmentDirectional.topStart}) {
    return Stack(clipBehavior: clipBehavior, alignment: alignment, children: this);
  }

  Wrap toWrap({
    WrapAlignment runAlignment = WrapAlignment.start,
    WrapAlignment alignment = WrapAlignment.start,
    WrapCrossAlignment crossAxisAlignment = WrapCrossAlignment.start,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextDirection? textDirection,
    Clip clipBehavior = Clip.none,
    double spacing = 0.0,
    double runSpacing = 0.0,
    Axis direction = Axis.horizontal,
  }) {
    return Wrap(
      runAlignment: runAlignment,
      clipBehavior: clipBehavior,
      spacing: Adapt.px(spacing),
      runSpacing: Adapt.px(runSpacing),
      alignment: alignment,
      crossAxisAlignment: crossAxisAlignment,
      direction: direction,
      verticalDirection: verticalDirection,
      textDirection: textDirection,
      children: this,
    );
  }
}

extension InLineSpansExtension on List<InlineSpan> {
  TextSpan toInLineSpan() {
    return TextSpan(children: this);
  }
}
