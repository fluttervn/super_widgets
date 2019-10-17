import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// [SuperIcon] is a [Container] with [Icon] inside
class SuperIcon extends BaseContainer {
  /// Create new [SuperIcon]. Its params is the combination of [Container]'s
  /// params (has the same param name) and [Icon]'s  params (has almost the
  /// same param name, but if have any duplicated name with its parent,
  /// then add prefix `child` - for example: if [Container] has `color`
  /// property, and [Icon] also  have `color` property, then the latter will
  /// be rename to `childColor`).
  ///
  /// The list below only show default params of [Container] :
  ///
  /// - [alignment] : default is [AlignmentDirectional.topStart]
  ///
  /// The list below only show renamed or default params of [Icon] :
  ///
  /// - [childKey] : [Key] of the [Icon]
  SuperIcon({
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
    bool ignoreSizeInfinityConstraints = false,
    VoidCallback onPressed,
    VoidCallback onLongPressed,
    Matrix4 transform,
    Key childKey,
    IconData icon,
    double size,
    Color childColor,
    String semanticLabel,
    TextDirection textDirection,
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
          ignoreSizeInfinityConstraints: ignoreSizeInfinityConstraints,
          onPressed: onPressed,
          onLongPressed: onLongPressed,
          margin: margin,
          transform: transform,
          child: Icon(
            icon,
            key: childKey,
            size: size,
            color: childColor,
            semanticLabel: semanticLabel,
            textDirection: textDirection,
          ),
        );
}
