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
    double width,
    double height,
    BoxConstraints constraints,
    String dynamicSize,
    Widget child,
  }) : super(
          key: key,
          alignment: alignment,
          padding: padding,
          color: color,
          width: width,
          height: height,
          dynamicSize: dynamicSize,
          decoration: decoration,
          constraints: constraints,
          margin: margin,
          child: child,
        );
}
