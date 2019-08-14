import 'package:flutter/widgets.dart';

/// SafeExpanded is a custom widget of [Expanded], which wraps child inside
/// a Expanded.
///
/// If has no flex, just return the child to avoid unnecessary deep level
class SafeExpanded extends StatelessWidget {
  /// flex
  final int flex;

  /// child
  final Widget child;

  /// Creates SafeExpanded
  SafeExpanded({
    Key key,
    this.flex,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget current = child;
    if (flex != null && flex > 0) {
      current = Expanded(flex: flex, child: current);
    }

    return current;
  }
}
