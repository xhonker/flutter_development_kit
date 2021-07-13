import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import './lib/flutter_development_kit.dart';

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return RichText(
    //   text: TextSpan(children: [
    //     TextSpan(text: '12', recognizer: TapGestureRecognizer()..onTap = () {}),
    //   ]),
    // );

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(text: '12').click(() => null).style2(
                TextStyle(fontSize: 12),
              )
        ],
      ),
    );
  }
}
