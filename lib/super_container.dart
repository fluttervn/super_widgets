import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// [SuperContainer] is a [BaseContainer] with is exposed for public using
class SuperContainer extends BaseContainer {
  /// Create new [SuperContainer].
  SuperContainer({
    Key key,
    AlignmentGeometry alignment,
    EdgeInsetsGeometry padding,
    EdgeInsetsGeometry margin,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    String dynamicSize,
    bool ignoreSizeInfinityConstraints = false,
    VoidCallback onPressed,
    VoidCallback onLongPressed,
    Matrix4 transform,
    Widget child,
  }) : super(
          key: key,
          alignment: alignment,
          padding: padding,
          margin: margin,
          color: color,
          decoration: decoration,
          foregroundDecoration: foregroundDecoration,
          width: width,
          height: height,
          constraints: constraints,
          dynamicSize: dynamicSize,
          ignoreSizeInfinityConstraints: ignoreSizeInfinityConstraints,
          onPressed: onPressed,
          onLongPressed: onLongPressed,
          transform: transform,
          child: child,
        );
}
