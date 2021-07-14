## text

方法

| 名称         | 说明       | 类型         | 默认值            | 示例                    |
| ------------ | ---------- | ------------ | ----------------- | ----------------------- |
| `fontSize`   | 文字大小   | `double`     | `-`               | `fontSize(14)`          |
| `bold`       | 文字粗细   | `FontWeight` | `FontWeight.bold` | `bold(FontWeight.w500)` |
| `color`      | 文字颜色   | `Color`      | `-`               | `color(Colors.red)`     |
| `maxLine`    | 文字最大行 | `int`        | `1`               | `maxLine(2)`            |
| `lineHeight` | 文字行高   | `double`     | `-`               | `lineHeight(1.3)`       |

#### Native

```dart
Text("some text", style: TextStyle(fontSize: 14, color: Colors.red, fontWeight: FontWeight.bold), maxLines: 2, overflow: TextOverflow.ellipsis);

```

#### Kit

```dart
Text("some text")
  .fontSize(14)
  .color(Colors.red)
  .maxLine(2)

```
