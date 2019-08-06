import 'package:flutter/widgets.dart';

/// [SuperColumn] is a [Container] with [Column] inside
class SuperColumn extends Container {
  /// Create new [SuperColumn]. Its params is the combination of [Container]'s
  /// params (has the same param name) and [Column]'s  params (has almost the
  /// same param name, but if have any duplicated name with its parent,
  /// then add prefix `child` - for example: if [Container] has `color`
  /// property, and [Column] also  have `color` property, then the latter will
  /// be rename to `childColor`).
  ///
  /// The list below only show default params of [Container] :
  ///
  /// - [alignment] : default is [AlignmentDirectional.topStart]
  ///
  /// The list below only show renamed or default params of [Column] :
  ///
  /// - [childKey] : [Key] of the [Column]
  /// - [children] : default is `<Widget>[]`
  /// - [mainAxisAlignment] : default is [MainAxisAlignment.start]
  /// - [mainAxisSize] : default is [MainAxisSize.max]
  /// - [crossAxisAlignment] : default is [CrossAxisAlignment.center]
  /// - [verticalDirection] : default is [VerticalDirection.down]
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
