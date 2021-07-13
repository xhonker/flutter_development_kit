import 'package:flutter/material.dart';

class Click extends StatelessWidget {
  const Click({Key? key, this.onTap, required this.child}) : super(key: key);
  final Function()? onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(behavior: HitTestBehavior.opaque, onTap: onTap, child: child);
  }
}
