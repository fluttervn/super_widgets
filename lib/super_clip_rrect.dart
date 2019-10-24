import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// [SuperClipRRect] is a [Container] with [ClipRRect] inside
class SuperClipRRect extends BaseContainer {
  /// Create new [SuperClipRRect]. Its params is the combination of [Container]'s
  /// params (has the same param name) and [ClipRRect]'s  params (has almost the
  /// same param name, but if have any duplicated name with its parent,
  /// then add prefix `child` - for example: if [Container] has `color`
  /// property, and [ClipRRect] also  have `color` property, then the latter will
  /// be rename to `childColor`).
  ///
  /// The list below only show default params of [BaseContainer] :
  ///
  /// - [alignment] : default is [AlignmentDirectional.topStart]
  ///
  /// The list below only show renamed or default params of [ClipRRect] :
  ///
  /// - [childKey] : [Key] of the [ClipRRect]
  SuperClipRRect({
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
    bool ignoreSizeInfinityConstraints = true,
    VoidCallback onPressed,
    VoidCallback onLongPressed,
    Matrix4 transform,
    Key childKey,
    @required Widget child,
    BorderRadius borderRadius,
    CustomClipper<RRect> clipper,
    Clip clipBehavior = Clip.antiAlias,
  })  : assert(borderRadius != null || clipper != null),
        assert(clipBehavior != null),
        super(
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
          child: ClipRRect(
            key: childKey,
            child: child,
            borderRadius: borderRadius,
            clipper: clipper,
            clipBehavior: clipBehavior,
          ),
        );
}
