import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// SuperOutlineButton] is a [Container] with [OutlineButton] inside
class SuperOutlineButton extends BaseContainer {
  /// Create new [SuperOutlineButton]. Its params is the combination of
  /// [Container]'s params (has the same param name) and [OutlineButton]'s
  /// params (has almost the same param name, but if have any duplicated name
  /// with its parent, then add prefix `child` - for example: if [Container]
  /// has `color` property, and [OutlineButton] also  have `color` property,
  /// then the latter will be rename to `childColor`).
  ///
  /// The list below only show default params of [Container] :
  ///
  /// - [alignment] : default is [AlignmentDirectional.topStart]
  ///
  /// The list below only show renamed or default params of [OutlineButton] :
  ///
  /// - [childKey] : [Key] of the [OutlineButton]
  /// - [childPadding] : padding of the [OutlineButton]
  /// - [childColor] : [Color] of the [OutlineButton]
  /// - [clipBehavior] : default is [Clip.none]
  /// - [onPressed] : default is empty [VoidCallback]
  ///
  SuperOutlineButton({
    Key key,
    AlignmentGeometry alignment,
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
    VoidCallback onLongPressed,
    Matrix4 transform,
    Key childKey,
    Widget child,
    VoidCallback onPressed,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color childColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    double highlightElevation,
    BorderSide borderSide,
    Color disabledBorderColor,
    Color highlightedBorderColor,
    EdgeInsetsGeometry childPadding,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus = false,
  })  : assert(highlightElevation == null || highlightElevation >= 0.0),
        assert(autofocus != null),
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
          ignoreImplicitWidthHeight: ignoreImplicitWidthHeight ?? false,
          onLongPressed: onLongPressed,
          transform: transform,
          child: OutlineButton(
            key: childKey,
            onPressed: onPressed ?? () {},
            textTheme: textTheme,
            textColor: textColor,
            disabledTextColor: disabledTextColor,
            color: childColor,
            focusColor: focusColor,
            hoverColor: hoverColor,
            highlightColor: highlightColor,
            splashColor: splashColor,
            highlightElevation: highlightElevation,
            borderSide: borderSide,
            disabledBorderColor: disabledBorderColor,
            highlightedBorderColor: highlightedBorderColor,
            padding: childPadding,
            shape: shape,
            clipBehavior: clipBehavior ?? Clip.none,
            focusNode: focusNode,
            autofocus: autofocus,
            child: child,
          ),
        );
}
