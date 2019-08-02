![Pub](https://img.shields.io/pub/v/super_widgets) [![GitHub license](https://img.shields.io/github/license/anticafe/super_widgets)](https://github.com/anticafe/super_widgets/blob/master/LICENSE)
# super_widgets

Make Flutter widgets' code becomes shorter and richer.

This project is an attempt to combine multiple Flutter widgets into single widget - the single one will inherit almost all properties of the original widgets. For example, instead of creating a `Stack` with `padding` and `color` by having `Container` > `Stack`, we can use `SuperStack`.

## Installation
In your `pubspec.yaml` file within your Flutter Project:

```yaml
dependencies:
  super_widgets: ^0.1.0
```
(See more information how to install this package in [pubspec.dev](https://pub.dev/packages/super_widgets#-installing-tab-))

Then import it:
```dart
import 'package:super_widgets/super_widgets.dart';
```

## Widgets

List of SuperWidgets is:
- [SuperStack](https://github.com/fluttervn/super_widgets/blob/master/README.md#superstack)
- [SuperIndexedStack](https://github.com/fluttervn/super_widgets/blob/master/README.md#superindexedstack)
- [SuperRow](https://github.com/fluttervn/super_widgets/blob/master/README.md#superrow)
- [SuperColumn](https://github.com/fluttervn/super_widgets/blob/master/README.md#supercolumn)
- [SuperRaisedButton](https://github.com/fluttervn/super_widgets/blob/master/README.md#superraisedbutton)
- [SuperIcon](https://github.com/fluttervn/super_widgets/blob/master/README.md#supericon)
- [SuperText](https://github.com/fluttervn/super_widgets/blob/master/README.md#supertext)

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
  alignment: Alignment.bottomCenter,
  childAlignment: Alignment.centerRight,
  fit: StackFit.loose,
  children: <Widget>[
    Container(color: Colors.red, width: 200, height: 200),
    Container(color: Colors.green, width: 100, height: 100),
    Text('SuperStack demo'),
  ],
)
```
### SuperIndexedStack
Is the combination of `Container` > `IndexedStack`
```dart
SuperIndexedStack(
  color: Colors.blueAccent,
  padding: EdgeInsets.all(20),
  alignment: Alignment.bottomCenter,
  childAlignment: Alignment.centerRight,
  sizing: StackFit.loose,
  index: 1,
  children: <Widget>[
    Container(color: Colors.red, width: 200, height: 200),
    Container(color: Colors.green, width: 100, height: 100),
    Text('SuperStack demo'),
  ],
)
```
### SuperRow
Is the combination of `Container` > `Row`
```dart
SuperRow(
  color: Colors.grey,
  margin: EdgeInsets.all(10),
  padding: EdgeInsets.all(5),
  height: 300,
  alignment: Alignment.centerRight,
  childKey: Key('SuperRow'),
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  mainAxisSize: MainAxisSize.max,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
    Container(color: Colors.red, width: 50),
    Container(color: Colors.green, width: 100),
    Container(color: Colors.blue, width: 75),
  ],
)
```
### SuperColumn
Is the combination of `Container` > `Column`
```dart
SuperColumn(
  color: Colors.grey,
  margin: EdgeInsets.all(10),
  padding: EdgeInsets.all(5),
  width: 300,
  alignment: Alignment.centerRight,
  childKey: Key('SuperColumn'),
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  mainAxisSize: MainAxisSize.max,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
    Container(color: Colors.red, height: 50),
    Container(color: Colors.green, height: 100),
    Container(color: Colors.blue, height: 75),
  ],
)
```
### SuperRaisedButton
Is the combination of `Container` > `RaisedButton`
```dart
SuperRaisedButton(
  color: Colors.grey[200],
  margin: EdgeInsets.all(10),
  padding: EdgeInsets.all(10),
  width: 200,
  height: 60,
  alignment: Alignment.centerRight,
  childKey: Key('SuperRaisedButton'),
  onPressed: () {
    print('Touch on SuperRaisedButton');
  },
  childText: Text(
    'Support us!',
    style: TextStyle(fontSize: 18, color: Colors.red, fontWeight: FontWeight.bold),
  ),
)
```
### SuperIcon
Is the combination of `Container` > `Icon`
```dart
SuperIcon(
  color: Colors.grey[300],
  margin: EdgeInsets.all(10),
  padding: EdgeInsets.only(right: 20),
  alignment: Alignment.centerRight,
  childKey: Key('SuperIcon'),
  childColor: Colors.red,
  icon: Icons.backup,
  size: 80,
)
```
### SuperText
Is the combination of `Container` > `Text`
- Normal text
```dart
SuperText(
  padding: EdgeInsets.all(10),
  textData: 'SuperText',
  color: Colors.green,
  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.pink),
)
```
- Text with Span
```dart
SuperText(
  margin: EdgeInsets.all(5),
  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900, color: Colors.black),
  textSpan: TextSpan(children: [
    TextSpan(
      text: 'Super ',
    ),
    TextSpan(
      text: 'Text Span',
      style: TextStyle(color: Colors.blue, fontSize: 24),
    ),
  ]),
  color: Colors.yellow,
)
```
## Example

A sample app can be found in the [`example/`](https://github.com/fluttervn/super_widgets/tree/master/example) folder.

## Authors
- [Bui Minh Triet](https://github.com/anticafe) (x3cafe@gmail.com)
