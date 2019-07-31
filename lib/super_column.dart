import 'package:flutter/widgets.dart';

class SuperColumn extends Container {
  /// [SuperColumn] is a [Container] with [Column] inside. Its params are all params of [Container]
  /// with [Column] params:
  ///
  /// - childKey: Key of the [Column]
  /// - children: List of Widgets of [Column], default is empty list
  /// - mainAxisAlignment: the [MainAxisAlignment] of [Column], default is [MainAxisAlignment.start]
  /// - mainAxisSize: the [MainAxisSize] of [Column], default is [MainAxisSize.max]
  /// - crossAxisAlignment: the [CrossAxisAlignment] of [Column], default is [CrossAxisAlignment.center]
  /// - textDirection: the [TextDirection] of [Column]
  /// - verticalDirection: the [VerticalDirection] of [Column], default is [VerticalDirection.down]
  /// - textBaseline: the [TextBaseline] of [Column]
  SuperColumn({
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
          child: Column(
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
