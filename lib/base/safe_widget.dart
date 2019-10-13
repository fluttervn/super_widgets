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

/// Wrap this [child] inside an [DecoratedBox] widget
Widget safeDecoratedBox(
    {@required Decoration decoration,
    @required Widget child,
    DecorationPosition position = DecorationPosition.background}) {
  Widget current = child;
  if (decoration != null) {
    current = DecoratedBox(
      decoration: decoration,
      child: current,
      position: position,
    );
  }

  return current;
}

/// Wrap this [child] inside an [DecoratedBox] widget
Widget safeConstrainedBox({
  @required BoxConstraints constraints,
  @required Widget child,
}) {
  Widget current = child;
  if (constraints != null) {
    current = ConstrainedBox(constraints: constraints, child: current);
  }

  return current;
}

/// Wrap this [child] inside an DynamicSize widget.
///
/// dynamicSize: (string) is the dynamic size of the container.
/// Its default value is empty, or its value can be:
///
/// - wrap: will be wrapped inside a [Wrap] widget
/// - full: will be wrapped inside an [Expanded] widget
Widget safeDynamicSize({
  @required String dynamicSize,
  @required Widget child,
}) {
  Widget current = child;
  if (dynamicSize == 'full') {
    current = Expanded(child: child);
  } else if (dynamicSize == 'wrap') {
    current = Wrap(children: <Widget>[current]);
  }

  return current;
}
