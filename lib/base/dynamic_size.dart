import 'package:flutter/widgets.dart';

/// SafePadding is a custom widget of [Padding], which wraps child inside
/// a Padding.
///
/// If has no padding, just return the child to avoid unnecessary deep level
class DynamicSize extends StatelessWidget {
  /// Dynamic size (string) of the container. Its default value is empty:
  /// - wrap: will be wrapped inside a [Wrap] widget
  /// - full: will be wrapped inside an [Expanded] widget
  final String dynamicSize;

  /// child
  final Widget child;

  /// Creates a widget that has ability to wrap or expand its size.
  DynamicSize({
    Key key,
    this.dynamicSize,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget current = child;

    if (dynamicSize == 'full') {
      current = Expanded(child: child);
    } else if (dynamicSize == 'wrap') {
      current = Wrap(children: <Widget>[current]);
    }

    return current;
  }
}
