import 'package:flutter/material.dart';
import 'package:flutter_development_kit/flutter_development_kit.dart';

extension ContainerExtension on Container {
  /// padding
  Container padding2({
    double? all,
    double? top,
    double? bottom,
    double? left,
    double? right,
    double? horizontal,
    double? vertical,
  }) {
    return this.copyWith(
      padding: EdgeInsets.only(
        top: adaptDefalut(top ?? vertical ?? all),
        bottom: adaptDefalut(bottom ?? vertical ?? all),
        left: adaptDefalut(left ?? horizontal ?? all),
        right: adaptDefalut(right ?? horizontal ?? all),
      ),
    );
  }

  /// margin
  Container margin2({
    double? all,
    double? top,
    double? bottom,
    double? left,
    double? right,
    double? horizontal,
    double? vertical,
  }) {
    return this.copyWith(
      margin: EdgeInsets.only(
        top: adaptDefalut(top ?? vertical ?? all),
        bottom: adaptDefalut(bottom ?? vertical ?? all),
        left: adaptDefalut(left ?? horizontal ?? all),
        right: adaptDefalut(right ?? horizontal ?? all),
      ),
    );
  }

  /// backgroundColor
  Container backgroundColor(Color color) {
    return this.copyWith(decoration: ((this.decoration ?? BoxDecoration()) as BoxDecoration).copyWith(color: color));
  }

  /// border radius
  Container borderRadius({
    double? all,
    double? topLeft,
    double? topRight,
    double? bottomLeft,
    double? bottomRight,
  }) {
    Radius radius(double? r) => Radius.circular(adaptDefalut(r ?? all));

    return this.copyWith(
      decoration: ((this.decoration ?? BoxDecoration()) as BoxDecoration).copyWith(
        borderRadius: BorderRadius.only(
          topLeft: radius(topLeft),
          topRight: radius(topRight),
          bottomLeft: radius(bottomLeft),
          bottomRight: radius(bottomRight),
        ),
      ),
    );
  }

  /// border
  Container border({
    required Color color,
    BorderStyle style = BorderStyle.solid,
    double? all,
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) {
    BorderSide borderSide({required Color color, required BorderStyle style, double? width}) {
      return BorderSide(
        width: width ?? all ?? 0.0,
        color: (width != null || all != null) ? color : Colors.transparent,
        style: style,
      );
    }

    return this.copyWith(
      decoration: ((this.decoration ?? BoxDecoration()) as BoxDecoration).copyWith(
        border: Border(
          top: borderSide(width: top, color: color, style: style),
          bottom: borderSide(width: bottom, color: color, style: style),
          left: borderSide(width: left, color: color, style: style),
          right: borderSide(width: right, color: color, style: style),
        ),
      ),
    );
  }

  Container gradient({
    required List<Color> colors,
    AlignmentGeometry begin = Alignment.centerLeft,
    AlignmentGeometry end = Alignment.centerRight,
    List<double>? stops,
  }) {
    return this.copyWith(
      decoration: ((this.decoration ?? BoxDecoration()) as BoxDecoration).copyWith(
        gradient: LinearGradient(colors: colors, begin: begin, end: end, stops: stops),
      ),
    );
  }

  Container boxShadow({
    double blurRadius = 0.0,
    Offset offset = const Offset(0, 0),
    Color color = Colors.black,
  }) {
    return this.copyWith(
      decoration: ((this.decoration ?? BoxDecoration()) as BoxDecoration).copyWith(boxShadow: [
        BoxShadow(
          blurRadius: Adapt.px(blurRadius),
          offset: offset,
          color: color,
        )
      ]),
    );
  }

  Container width(double? width) => this.copyWith(width: width != null ? Adapt.px(width) : width);

  Container height(double? height) => this.copyWith(height: height != null ? Adapt.px(height) : height);

  Container clip(Clip clip) => this.copyWith(clipBehavior: clip);

  Container alignment2(Alignment? alignment) => this.copyWith(alignment: alignment);

  Container maxWidth(double maxWidth) => this.copyWith(maxWidth: Adapt.px(maxWidth));
  Container minWidth(double minWidth) => this.copyWith(minWidth: Adapt.px(minWidth));
  Container maxHeight(double maxHeight) => this.copyWith(maxHeight: Adapt.px(maxHeight));
  Container minHeight(double minHeight) => this.copyWith(minHeight: Adapt.px(minHeight));

  Container copyWith({
    EdgeInsets? padding,
    EdgeInsets? margin,
    AlignmentGeometry? alignment,
    Clip? clipBehavior,
    BoxDecoration? decoration,
    BoxConstraints? boxConstraints,
    bool expanded = false,
    double? width,
    double? height,
    double? maxWidth,
    double? minWidth,
    double? maxHeight,
    double? minHeight,
  }) {
    BoxConstraints defaultConstraints = BoxConstraints(
      maxHeight: maxHeight ?? double.infinity,
      maxWidth: maxWidth ?? double.infinity,
      minWidth: minWidth ?? 0.0,
      minHeight: minHeight ?? 0.0,
    );
    bool hasConstraint = (maxHeight != null || maxWidth != null || minHeight != null || minWidth != null);
    BoxConstraints? constraints = hasConstraint ? defaultConstraints : this.constraints;
    return Container(
      padding: padding ?? this.padding,
      margin: margin ?? this.margin ?? EdgeInsets.zero,
      alignment: alignment ?? this.alignment,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      decoration: decoration ?? this.decoration ?? BoxDecoration(),
      constraints: constraints,
      height: height,
      width: width,
      child: this.child,
    );
  }
}
