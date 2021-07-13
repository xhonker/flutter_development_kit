import 'package:flutter/material.dart';
import 'package:flutter_development_kit/flutter_development_kit.dart';

extension WidgetExtension on Widget {
  Padding padding({
    double? all,
    double? top,
    double? bottom,
    double? left,
    double? right,
    double? horizontal,
    double? vertical,
  }) {
    return Padding(
      padding: EdgeInsets.only(
        top: adaptDefalut(top ?? vertical ?? all),
        bottom: adaptDefalut(bottom ?? vertical ?? all),
        left: adaptDefalut(left ?? horizontal ?? all),
        right: adaptDefalut(right ?? horizontal ?? all),
      ),
      child: this,
    );
  }

  ClipOval clipOval() => ClipOval(child: this);

  Click click({Function()? onTap}) => Click(onTap: onTap, child: this);

  Align align([Alignment alignment = Alignment.center]) => Align(alignment: alignment, child: this);

  Visibility visibility([bool visible = true]) => Visibility(visible: visible, child: this);

  Positioned positioned({double? top, double? bottom, double? left, double? right}) =>
      Positioned(top: adapt(top), bottom: adapt(bottom), left: adapt(left), right: adapt(right), child: this);

  Expanded expanded([int flex = 1]) => Expanded(flex: flex, child: this);

  SizedBox height(double height) => SizedBox(height: Adapt.px(height), child: this);

  SizedBox width(double width) => SizedBox(width: Adapt.px(width), child: this);

  Container backgroundColor(Color color) => Container(color: color, child: this);

  SizedBox sizedBox({double? height, double? width}) =>
      SizedBox(height: adapt(height), width: adapt(width), child: this);

  /// 仅限于滚动容器使用
  ScrollConfiguration overScroll({ScrollBehavior? behavior}) {
    return ScrollConfiguration(behavior: behavior ?? OverScrollBehavior(), child: this);
  }

  Container toContainer() => Container(child: this);

  SliverToBoxAdapter toSliver() => SliverToBoxAdapter(child: this);
}
