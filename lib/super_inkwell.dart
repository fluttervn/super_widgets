import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// [SuperInkWell] is a [InkWell] with [Container] inside
class SuperInkWell extends InkWell {
  /// Create new [SuperInkWell]. Its params is the combination of
  /// [Container]'s params (has the same param name) and [InkWell]'s
  /// params (has almost the same param name, but if have any duplicated name
  /// with its parent, then add prefix `child` - for example: if [Container]
  /// has `color` property, and [InkWell] also  have `color` property,
  /// then the latter will be rename to `childColor`).
  ///
  /// The list below only show renamed or default params of [InkWell] :
  ///
  /// - [onTap] : default empty [GestureTapCallback]
  ///
  /// The list below only show default params of [Container] :
  ///
  /// - [childKey] : [Key] of the [InkWell]
  /// - [alignment] : default is [AlignmentDirectional.topStart]
  ///
  SuperInkWell({
    Key key,
    GestureTapCallback onTap,
    GestureTapCallback onDoubleTap,
    GestureLongPressCallback onLongPress,
    GestureTapDownCallback onTapDown,
    GestureTapCancelCallback onTapCancel,
    ValueChanged<bool> onHighlightChanged,
    Color highlightColor,
    Color splashColor,
    InteractiveInkFeatureFactory splashFactory,
    double radius,
    BorderRadius borderRadius,
    ShapeBorder customBorder,
    bool enableFeedback = true,
    bool excludeFromSemantics = false,
    Key childKey,
    Widget childText,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    EdgeInsetsGeometry padding,
    EdgeInsetsGeometry margin,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    Matrix4 transform,
  }) : super(
          key: key,
          onTap: onTap ?? () {},
          onDoubleTap: onDoubleTap,
          onLongPress: onLongPress,
          onTapDown: onTapDown,
          onTapCancel: onTapCancel,
          onHighlightChanged: onHighlightChanged,
          highlightColor: highlightColor,
          splashColor: splashColor,
          splashFactory: splashFactory,
          radius: radius,
          borderRadius: borderRadius,
          customBorder: customBorder,
          enableFeedback: enableFeedback,
          excludeFromSemantics: excludeFromSemantics,
          child: Container(
            key: childKey,
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
            child: childText,
          ),
        );
}
