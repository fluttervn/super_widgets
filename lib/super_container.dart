import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/base/base_container.dart';

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

    /// To use [expandFlex], its parent must be a [Row], [Column] or [Flex]
    int expandFlex,
    Widget child,
  }) : super(
          key: key,
          alignment: alignment,
          padding: padding,
          color: color,
          decoration: decoration,
          width: width,
          height: height,
          constraints: constraints,
          margin: margin,
          expandFlex: expandFlex,
          child: child,
        );
}
