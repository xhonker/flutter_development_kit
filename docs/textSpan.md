## TextSpan

方法

| 名称    | 描述             |
| ------- | ---------------- |
| `click` | 行内文本点击事件 |

#### Native

```dart
TextSpan(text: 'some text', recognizer: TapGestureRecognizer()..onTap = () {});
```

#### Kit

```dart
TextSpan(text: 'some text').click((){})
```
