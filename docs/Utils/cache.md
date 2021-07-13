### Cache

#### save

```dart
SpUtils.save("SOME_KEY",1);
```

#### find

```dart
SpUtils.find("SOME_KEY",0); // print 1
```

#### remove

```dart
SpUtils.remove("SOME_KEY");
SpUtils.find("SOME_KEY",0); // print 0
```

#### clear

```dart
SpUtils.clear(); // clear all database
```
