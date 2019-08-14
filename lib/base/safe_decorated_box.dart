import 'package:flutter/widgets.dart';

/// SafeDecoratedBox is a custom widget of [DecoratedBox], which wraps child
/// inside a DecoratedBox.
///
/// If has no decoration, just return the child to avoid unnecessary deep level
class SafeDecoratedBox extends StatelessWidget {
  /// decoration
  final Decoration decoration;

  /// child
  final Widget child;

  /// Creates SafeDecoratedBox
  SafeDecoratedBox({
    Key key,
    this.decoration,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget current = child;
    if (decoration != null) {
      current = DecoratedBox(decoration: decoration, child: current);
    }

    return current;
  }
}
