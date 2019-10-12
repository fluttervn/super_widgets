import 'package:flutter/widgets.dart';

/// SafePadding is a custom widget of [Padding], which wraps child inside
/// a Padding.
///
/// If has no padding, just return the child to avoid unnecessary deep level
class SafeConstrainedBox extends StatelessWidget {
  /// constraints
  final BoxConstraints constraints;

  /// child
  final Widget child;

  /// Creates a widget that mimics [Container] with combination of common
  /// painting, positioning, and sizing widgets.
  SafeConstrainedBox({
    Key key,
    this.constraints,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget current = child;
    if (constraints != null) {
      current = ConstrainedBox(constraints: constraints, child: current);
    }

    return current;
  }
}
