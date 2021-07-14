### Position

参数说明

| 参数     | 类型     | 默认 | 示例                      |
| -------- | -------- | ---- | ------------------------- |
| `top`    | `double` | `-`  | `positioned(top:10.0)`    |
| `bottom` | `double` | `-`  | `positioned(bottom:10.0)` |
| `left`   | `double` | `-`  | `positioned(left:10.0)`   |
| `right`  | `double` | `-`  | `positioned(right:10.0)`  |

#### Native

```dart
Positioned(
  top: 0,
  left: 0,
  child: Text("some text"),
);

```

#### Kit

```dart
Text("some text").positioned(top: 0.0, left: 0.0);
```
