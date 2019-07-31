import 'package:flutter/widgets.dart';

class SuperRow extends Container {
  /// [SuperRow] is a [Container] with [Row] inside. Its params are all params of [Container]
  /// with [Row] params:
  ///
  /// - childKey: Key of the [Row]
  /// - children: List of Widgets of [Row], default is empty list
  /// - mainAxisAlignment: the [MainAxisAlignment] of [Row], default is [MainAxisAlignment.start]
  /// - mainAxisSize: the [MainAxisSize] of [Row], default is [MainAxisSize.max]
  /// - crossAxisAlignment: the [CrossAxisAlignment] of [Row], default is [CrossAxisAlignment.center]
  /// - textDirection: the [TextDirection] of [Row]
  /// - verticalDirection: the [VerticalDirection] of [Row], default is [VerticalDirection.down]
  /// - textBaseline: the [TextBaseline] of [Row]
  SuperRow({
    Key key,
    AlignmentGeometry alignment,
    EdgeInsetsGeometry padding,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    EdgeInsetsGeometry margin,
    Matrix4 transform,
    Key childKey,
    List<Widget> children,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
  }) : super(
          key: key,
          alignment: alignment,
          padding: padding,
          color: color,
          decoration: decoration,
          foregroundDecoration: foregroundDecoration,
          width: width,
          height: height,
          constraints: constraints,
          margin: margin,
          transform: transform,
          child: Row(
            key: childKey,
            children: children ?? <Widget>[],
            mainAxisAlignment: mainAxisAlignment,
            mainAxisSize: mainAxisSize,
            crossAxisAlignment: crossAxisAlignment,
            verticalDirection: verticalDirection,
            textDirection: textDirection,
            textBaseline: textBaseline,
          ),
        );
}
