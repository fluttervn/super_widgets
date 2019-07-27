![Pub](https://img.shields.io/pub/v/super_widgets) [![GitHub license](https://img.shields.io/github/license/anticafe/super_widgets)](https://github.com/anticafe/super_widgets/blob/master/LICENSE)
# super_widgets

Make Flutter widgets&#x27; code becomes shorter and richer.

This project is an attempt to combine multiple Flutter widgets to make code shorter. For example, instead of creating a `Stack` with `padding` and `color` by having `Container` > `Stack`, we can use `SuperStack`.

## Installation
In your `pubspec.yaml` file within your Flutter Project:

```yaml
dependencies:
  super_widgets: ^0.0.1
```
See more about how to install in [pubspec.dev](https://pub.dev/packages/super_widgets#-installing-tab-): 

## Widgets

List of SuperWidgets is:
- [SuperStack](https://github.com/aqwert/flutter_platform_widgets/blob/master/README.md#superstack)

### SuperStack
Is the combination of `Container` > `Stack`

Before:
```dart
Container(
  color: Colors.blueAccent,
  margin: EdgeInsets.all(10),
  padding: EdgeInsets.all(20),
  alignment: Alignment.bottomCenter,
  child: Stack(
    fit: StackFit.loose,
    alignment: Alignment.centerRight,
    children: <Widget>[
      Container(color: Colors.red, width: 200, height: 200),
      Container(color: Colors.green, width: 100, height: 100),
      Text('SuperStack demo'),
    ],
  ),
)
```
After
```dart
SuperStack(
  color: Colors.blueAccent,
  margin: EdgeInsets.all(10),
  padding: EdgeInsets.all(20),
  innerAlignment: Alignment.bottomCenter,
  alignment: Alignment.centerRight,
  fit: StackFit.loose,
  children: <Widget>[
    Container(color: Colors.red, width: 200, height: 200),
    Container(color: Colors.green, width: 100, height: 100),
    Text('SuperStack demo'),
  ],
)
```

## Example

A sample app can be found in the [`example/`](https://github.com/anticafe/super_widgets/tree/master/super_widgets/example) folder.
