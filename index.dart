import 'package:flutter/material.dart';
import './lib/flutter_development_kit.dart';

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container().width(100).height(100).backgroundColor(Colors.red).clipOval();
    return ClipOval(
      child: Container(
        width: 100,
        height: 100,
        color: Colors.red,
      ),
    );
  }
}
