import 'package:flutter/material.dart';

///  MainAxisAlignment_CrossAxisAlignment
/// 适用于 `Row` `Column`
///  ### example
/// ``` dart
///  List<Widget> child = [Container()];
///
///  Row(
///     mainAxisAlignment: MainAxisAlignment.start,
///     crossAxisAlignment: CrossAxisAlignment.start,
///     child: child,
/// )
/// 等于
/// child.toRow(alignment: ListAlignment.START_START)
/// ```
enum ListAlignment {
  START_START,
  START_CENTER,
  CENTER_CENTER,
  CENTER_START,
  SPACE_BETWEEN_START,
  SPACE_BETWEEN_CENTER,
}

extension ListAlignmentExtension on ListAlignment {
  MainAxisAlignment get main => [
        MainAxisAlignment.start,
        MainAxisAlignment.start,
        MainAxisAlignment.center,
        MainAxisAlignment.center,
        MainAxisAlignment.spaceBetween,
        MainAxisAlignment.spaceBetween,
      ][index];

  CrossAxisAlignment get cross => [
        CrossAxisAlignment.start,
        CrossAxisAlignment.center,
        CrossAxisAlignment.center,
        CrossAxisAlignment.start,
        CrossAxisAlignment.start,
        CrossAxisAlignment.center,
      ][index];
}
