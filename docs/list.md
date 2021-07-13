## List

### Row

#### Native

```dart
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("a"),
    Text("b"),
    Text("c"),
  ],
);
```

#### Kit

```dart
[Text("a"), Text("b"), Text("c")].toRow(alignment: ListAlignment.SPACE_BETWEEN_START);
```

### Column

#### Native

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text("a"),
    Text("b"),
    Text("c"),
  ],
);

```

#### Kit

```dart
[Text("a"), Text("b"), Text("c")].toColumn(alignment: ListAlignment.SPACE_BETWEEN_START);
```
