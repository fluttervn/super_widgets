import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// [SuperIconButton] is a [Container] with [IconButton] inside
class SuperIconButton extends BaseContainer {
  /// Create new [SuperIconButton]. Its params is the combination of
  /// [Container]'s params (has the same param name) and [Icon]'s  params
  /// (has almost the same param name, but if have any duplicated name with
  /// its parent, then add prefix `child` - for example: if [Container] has
  /// `color` property, and [Icon] also  have `color` property, then the latter
  /// will be rename to `childColor`).
  ///
  /// The list below only show default params of [Container] :
  ///
  /// - [alignment] : default is [AlignmentDirectional.topStart]
  ///
  /// The list below only show renamed or default params of [IconButton] :
  ///
  /// - [childKey] : [Key] of the [IconButton]
  SuperIconButton({
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
    VoidCallback onLongPressed,
    Matrix4 transform,
    Key childKey,
    double iconSize = 24.0,
    EdgeInsets childPadding = const EdgeInsets.all(8.0),
    AlignmentGeometry childAlignment = Alignment.center,
    @required Widget icon,
    Color childColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    Color disabledColor,
    @required VoidCallback onPressed,
    FocusNode focusNode,
    bool autofocus = false,
    String tooltip,
  })  : assert(iconSize != null),
        assert(childPadding != null),
        assert(childAlignment != null),
        assert(autofocus != null),
        assert(icon != null),
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
          ignoreImplicitWidthHeight: ignoreImplicitWidthHeight,
          onPressed: onPressed,
          onLongPressed: onLongPressed,
          margin: margin,
          transform: transform,
          child: IconButton(
            key: childKey,
            iconSize: iconSize,
            padding: childPadding,
            alignment: childAlignment,
            icon: icon,
            color: childColor,
            focusColor: focusColor,
            hoverColor: hoverColor,
            highlightColor: highlightColor,
            splashColor: splashColor,
            disabledColor: disabledColor,
            onPressed: onPressed,
            focusNode: focusNode,
            autofocus: autofocus,
            tooltip: tooltip,
          ),
        );
}
