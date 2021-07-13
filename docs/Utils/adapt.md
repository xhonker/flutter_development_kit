### Adapt

设计稿适配

```dart
class Example extends StatefulWidget {
  const Example({Key? key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  init() {
    Adapt.init(context, designWidth: 750);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, box) {
      if (box.maxWidth != 0) {
        init();
        return Container(
          width: Adapt.px(10),
          height: Adapt.px(20),
        );
      } else {
        return Container();
      }
    });
  }
}
```
