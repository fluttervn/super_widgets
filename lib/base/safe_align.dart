import 'package:flutter/widgets.dart';

/// SafeAlign is a custom widget of [Align], which wraps child inside
/// a Align.
///
/// If has no alignment, just return the child to avoid unnecessary deep level
class SafeAlign extends StatelessWidget {
  /// alignment
  final AlignmentGeometry alignment;

  /// child
  final Widget child;

  /// Creates SafeAlign
  SafeAlign({
    Key key,
    this.alignment,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget current = child;
    if (alignment != null) {
      current = Align(alignment: alignment, child: current);
    }

    return current;
  }
}
