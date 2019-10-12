import 'package:flutter/widgets.dart';

/// Wrap this child inside an [Align] widget
Widget safeAlign({AlignmentGeometry alignment, Widget child}) {
  Widget current = child;
  if (alignment != null) {
    current = Align(alignment: alignment, child: current);
  }

  return current;
}
