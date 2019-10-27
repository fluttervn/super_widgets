import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// [SuperRow] is a [Container] with [Row] inside
class SuperRow extends BaseContainer {
  /// Create new [SuperRow]. Its params is the combination of
  /// [Container]'s params (has the same param name) and [Row]'s
  /// params (has almost the same param name, but if have any duplicated name
  /// with its parent, then add prefix `child` - for example: if [Container]
  /// has `color` property, and [Row] also  have `color` property,
  /// then the latter will be rename to `childColor`).
  ///
  /// The list below only show default params of [Container] :
  ///
  /// - [alignment] : default is [AlignmentDirectional.topStart]
  ///
  /// The list below only show renamed or default params of [Row] :
  ///
  /// - [childKey] : [Key] of the [Row]
  /// - [children] : default is `<Widget>[]`
  /// - [mainAxisAlignment] : default is [MainAxisAlignment.start]
  /// - [mainAxisSize] : default is [MainAxisSize.max]
  /// - [crossAxisAlignment] : default is [CrossAxisAlignment.center]
  /// - [verticalDirection] : default is [VerticalDirection.down]
  SuperRow({
    Key key,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    EdgeInsetsGeometry padding,
    EdgeInsetsGeometry margin,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    String dynamicSize,
    bool ignoreImplicitWidthHeight = false,
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
          dynamicSize: dynamicSize,
          ignoreImplicitWidthHeight: ignoreImplicitWidthHeight,
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
