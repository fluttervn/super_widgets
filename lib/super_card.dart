import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';
import 'base/safe_widget.dart';

/// [SuperCard] is a [Container] with [Card] inside
class SuperCard extends BaseContainer {
  /// Create new [SuperCard]. Its params is the combination of [Container]'s
  /// params (has the same param name) and [Card]'s  params (has almost the
  /// same param name, but if have any duplicated name with its parent,
  /// then add prefix `child` - for example: if [Container] has `color`
  /// property, and [Card] also  have `color` property, then the latter will
  /// be rename to `childColor`).
  ///
  /// The list below only show default params of [Container] :
  ///
  /// - [alignment] : default is [AlignmentDirectional.topStart]
  ///
  /// The list below only show renamed or default params of [Card] :
  ///
  /// - [childKey] : [Key] of the [Card]
  SuperCard({
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
    Color childColor,
    double elevation,
    ShapeBorder shape,
    bool borderOnForeground = true,
    EdgeInsetsGeometry childMargin,
    EdgeInsetsGeometry childPadding,
    Clip clipBehavior,
    Widget child,
    bool semanticContainer = true,
    bool enableInkWell = false,
    Color splashColor,
  })  : assert(elevation == null || elevation >= 0.0),
        assert(borderOnForeground != null),
        assert(enableInkWell != null),
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
          child: safeInkWell(
            enableInkWell: enableInkWell,
            splashColor: splashColor,
            child: Card(
              key: childKey,
              color: childColor,
              elevation: elevation,
              shape: shape,
              borderOnForeground: borderOnForeground,
              margin: childMargin,
              clipBehavior: clipBehavior,
              child: safePadding(padding: childPadding, child: child),
              semanticContainer: semanticContainer,
            ),
          ),
        );
}
