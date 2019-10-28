import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// SuperFlatButton] is a [Container] with [FlatButton] inside
class SuperFlatButton extends BaseContainer {
  /// Create new [SuperFlatButton]. Its params is the combination of
  /// [Container]'s params (has the same param name) and [FlatButton]'s
  /// params (has almost the same param name, but if have any duplicated name
  /// with its parent, then add prefix `child` - for example: if [Container]
  /// has `color` property, and [FlatButton] also  have `color` property,
  /// then the latter will be rename to `childColor`).
  ///
  /// The list below only show default params of [Container] :
  ///
  /// - [alignment] : default is [AlignmentDirectional.topStart]
  ///
  /// The list below only show renamed or default params of [FlatButton] :
  ///
  /// - [childKey] : [Key] of the [FlatButton]
  /// - [childPadding] : padding of the [FlatButton]
  /// - [childColor] : [Color] of the [FlatButton]
  /// - [clipBehavior] : default is [Clip.none]
  /// - [onPressed] : default is empty [VoidCallback]
  ///
  SuperFlatButton({
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
    int flex,
    bool ignoreImplicitWidthHeight = false,
    VoidCallback onLongPressed,
    Matrix4 transform,
    Key childKey,
    VoidCallback onPressed,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color childColor,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    EdgeInsetsGeometry childPadding,
    ShapeBorder shape,
    Clip clipBehavior,
    FocusNode focusNode,
    bool autofocus = false,
    MaterialTapTargetSize materialTapTargetSize,
    @required Widget child,
  })  : assert(autofocus != null),
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
          flex: flex,
          ignoreImplicitWidthHeight: ignoreImplicitWidthHeight ?? false,
          onLongPressed: onLongPressed,
          transform: transform,
          child: FlatButton(
            key: childKey,
            onPressed: onPressed,
            onHighlightChanged: onHighlightChanged,
            textTheme: textTheme,
            textColor: textColor,
            disabledTextColor: disabledTextColor,
            color: childColor,
            disabledColor: disabledColor,
            focusColor: focusColor,
            hoverColor: hoverColor,
            highlightColor: highlightColor,
            splashColor: splashColor,
            colorBrightness: colorBrightness,
            padding: childPadding,
            shape: shape,
            clipBehavior: clipBehavior,
            focusNode: focusNode,
            autofocus: autofocus,
            materialTapTargetSize: materialTapTargetSize,
            child: child,
          ),
        );
}
