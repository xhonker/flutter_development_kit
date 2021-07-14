### Padding

参数说明

| 参数         | 说明 | 类型     | 默认值 | 示例                       |
| ------------ | ---- | -------- | ------ | -------------------------- |
| `all`        | 全部 | `double` | `-`    | `padding(all:10.0)`        |
| `top`        | 上   | `double` | `-`    | `padding(top:10.0)`        |
| `bottom`     | 下   | `double` | `-`    | `padding(bottom:10.0)`     |
| `left`       | 左   | `double` | `-`    | `padding(left:10.0)`       |
| `right`      | 右   | `double` | `-`    | `padding(right:10.0)`      |
| `horizontal` | 水平 | `double` | `-`    | `padding(horizontal:10.0)` |
| `vertical`   | 垂直 | `double` | `-`    | `padding(vertical:10.0)`   |

##### Native

```dart
Padding(
  padding: EdgeInsets.symmetric(horizontal: 10.0),
  child: Text("some text"),
);

```

##### Kit

```dart
Text("some text").padding(horizontal: 10.0);
```
