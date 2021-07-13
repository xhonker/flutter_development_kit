### OverScroll

> 去掉安卓滚动下拉波浪效果

> 仅适用于滚动容器

#### Native

```dart
ScrollConfiguration(
  behavior: OverScrollBehavior(),
  child: SingleChildScrollView(),
);
```

#### Kit

```dart
SingleChildScrollView().overScroll();
```
