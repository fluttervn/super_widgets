import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// SuperRaisedButton] is a [Container] with [RaisedButton] inside
class SuperRaisedButton extends BaseContainer {
  /// Create new [SuperRaisedButton]. Its params is the combination of
  /// [Container]'s params (has the same param name) and [RaisedButton]'s
  /// params (has almost the same param name, but if have any duplicated name
  /// with its parent, then add prefix `child` - for example: if [Container]
  /// has `color` property, and [RaisedButton] also  have `color` property,
  /// then the latter will be rename to `childColor`).
  ///
  /// The list below only show default params of [Container] :
  ///
  /// - [alignment] : default is [AlignmentDirectional.topStart]
  ///
  /// The list below only show renamed or default params of [RaisedButton] :
  ///
  /// - [childKey] : [Key] of the [RaisedButton]
  /// - [childPadding] : padding of the [RaisedButton]
  /// - [childColor] : [Color] of the [RaisedButton]
  /// - [clipBehavior] : default is [Clip.none]
  /// - [onPressed] : default is empty [VoidCallback]
  ///
  SuperRaisedButton({
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
    VoidCallback onLongPressed,
    Matrix4 transform,
    Key childKey,
    Widget child,
    VoidCallback onPressed,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color childColor,
    Color disabledColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    double elevation,
    double highlightElevation,
    double disabledElevation,
    EdgeInsetsGeometry childPadding,
    ShapeBorder shape,
    Clip clipBehavior = Clip.none,
    MaterialTapTargetSize materialTapTargetSize,
    Duration animationDuration,
  })  : assert(elevation == null || elevation >= 0.0),
        assert(highlightElevation == null || highlightElevation >= 0.0),
        assert(disabledElevation == null || disabledElevation >= 0.0),
        super(
          key: key,
          color: color,
          alignment: alignment,
          padding: padding,
          margin: margin,
          decoration: decoration,
          foregroundDecoration: foregroundDecoration,
          width: width,
          height: height,
          constraints: constraints,
          dynamicSize: dynamicSize,
          ignoreSizeInfinityConstraints: ignoreSizeInfinityConstraints,
          onLongPressed: onLongPressed,
          transform: transform,
          child: RaisedButton(
            key: childKey,
            onPressed: onPressed ?? () {},
            onHighlightChanged: onHighlightChanged,
            textTheme: textTheme,
            textColor: textColor,
            disabledTextColor: disabledTextColor,
            color: childColor,
            disabledColor: disabledColor,
            highlightColor: highlightColor,
            splashColor: splashColor,
            colorBrightness: colorBrightness,
            elevation: elevation,
            highlightElevation: highlightElevation,
            disabledElevation: disabledElevation,
            padding: childPadding,
            shape: shape,
            clipBehavior: clipBehavior,
            materialTapTargetSize: materialTapTargetSize,
            animationDuration: animationDuration,
            child: child,
          ),
        );
}
