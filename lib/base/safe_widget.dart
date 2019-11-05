import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Wrap this [child] inside an [Align] widget.
///
/// If [alignment] widget is null, then just return this [child].
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

/// Wrap this [child] inside an [Padding] widget.
///
/// If [padding] widget is null, then just return this [child].
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

/// Wrap this [child] inside an [DecoratedBox] widget.
///
/// If [decoration] widget is null, then just return this [child].
Widget safeDecoratedBox({
  @required Decoration decoration,
  @required Widget child,
  DecorationPosition position = DecorationPosition.background,
}) {
  Widget current = child;
  if (decoration != null) {
    current = DecoratedBox(
      decoration: decoration,
      position: position,
      child: current,
    );
  }

  return current;
}

/// Wrap this [child] inside an [DecoratedBox] widget.
///
/// If [constraints] widget is null, then just return this [child].
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

/// Wrap this [child] inside an [Transform] widget.
///
/// If [transform] widget is null, then just return this [child].
Widget safeTransform({
  @required Matrix4 transform,
  @required Widget child,
}) {
  Widget current = child;
  if (transform != null) {
    current = Transform(transform: transform, child: current);
  }

  return current;
}

/// Wrap this [child] inside an [InkWell] widget.
///
/// If [enableInkWell] is not true, then just return this `widget`.
///
/// If [enableInkWell] is true but `splashColor` is null, then `splashColor`
/// will be automatically gotten from Theme instead.
Widget safeInkWell({
  bool enableInkWell,
  Color splashColor,
  @required Widget child,
}) {
  Widget current = child;
  if (true == enableInkWell) {
    current = InkWell(splashColor: splashColor, child: current);
  }

  return current;
}

/// Wrap this [child] inside a [Wrap] or [Expanded] widget.
///
/// [flex] is same as `flex` value which is used in [Flexible].
///
/// - if flex=0: [child] will be wrapped inside a [Wrap] widget.
/// - if flex>0: [child] will be wrapped inside a [Expanded] with flex value.
/// - if flex is null, just return [child] widget.
Widget safeFlex({
  int flex,
  @required Widget child,
}) {
  Widget current = child;
  if (flex != null) {
    if (flex >= 1) {
      current = Expanded(flex: flex, child: child);
    } else if (flex == 0) {
      current = Wrap(children: <Widget>[current]);
    }
  }

  return current;
}

/// Wrap this widget into a [GestureDetector] to allow [onPressed] and
/// [onLongPressed].
///
/// If both [onPressed] and [onLongPressed] is null, just return the [child]
Widget safeOnPress({
  @required Widget child,
  VoidCallback onPressed,
  VoidCallback onLongPressed,
}) {
  if (onPressed != null || onLongPressed != null) {
    return GestureDetector(
      onTap: onPressed,
      onLongPress: onLongPressed,
      child: child,
    );
  }
  return child;
}
