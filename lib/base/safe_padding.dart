import 'package:flutter/widgets.dart';

/// SafePadding is a custom widget of [Padding], which wraps child inside
/// a Padding.
///
/// If has no padding, just return the child to avoid unnecessary deep level
class SafePadding extends StatelessWidget {
  /// padding
  final EdgeInsetsGeometry padding;

  /// child
  final Widget child;

  /// Creates a widget that mimics [Container] with combination of common
  /// painting, positioning, and sizing widgets.
  SafePadding({
    Key key,
    this.padding,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget current = child;
    if (padding != null) {
      current = Padding(padding: padding, child: current);
    }

    return current;
  }
}
