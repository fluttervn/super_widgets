import 'package:flutter/widgets.dart';

/// SafePadding is a custom widget of [Padding], which wraps child inside
/// a Padding.
///
/// If has no padding, just return the child to avoid unnecessary deep level
class DynamicSize extends StatelessWidget {
  /// Width (string) of the container. Its default value is `wrap`:
  /// - wrap: is [Wrap] widget
  /// - full: is [Expanded] widget
  /// - any integer (100, 250...): is exact width of this widget
  final String width;

  /// Height (string) of the container. Its default value is `wrap`:
  /// - wrap: is [Wrap] widget
  /// - full: is [Expanded] widget
  /// - any integer (100, 250...): is exact height of this widget
  final String height;

  /// child
  final Widget child;

  /// Creates a widget that mimics [Container] with combination of common
  /// painting, positioning, and sizing widgets.
  DynamicSize({
    Key key,
    this.width,
    this.height,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget current = child;

    if (width == 'full') {
      if (height == 'full') {
        current = Container(
          width: double.infinity,
          height: double.infinity,
          child: child,
        );
      } else if (height == 'wrap') {
        current = Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[child],
        );
      } else {
        double dHeight = double.parse(height);
        current = Container(
          width: double.infinity,
          height: dHeight,
          child: child,
        );
      }
    } else if (width == 'wrap') {
      if (height == 'full') {
        current = Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[child],
        );
      } else if (height == 'wrap') {
        current = Wrap(
          children: <Widget>[child],
        );
      } else {
        double dHeight = double.parse(height);
        current = Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[child],
        );
      }
    }

    return current;
  }
}
