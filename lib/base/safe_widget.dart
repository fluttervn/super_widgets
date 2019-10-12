import 'package:flutter/widgets.dart';

/// Wrap this [child] inside an [Align] widget
Widget safeAlign({
  @required AlignmentGeometry alignment,
  @required Widget child,
}) {
  Widget current = child;
  if (alignment != null) {
    current = Align(alignment: alignment, child: current);
  }

  return current;
}

/// Wrap this [child] inside an [Padding] widget
Widget safePadding({
  @required EdgeInsetsGeometry padding,
  @required Widget child,
}) {
  Widget current = child;
  if (padding != null) {
    current = Padding(padding: padding, child: current);
  }

  return current;
}
