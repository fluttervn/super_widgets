import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// [SuperIconButton] is a [Container] with [IconButton] inside.
class SuperIconButton extends BaseContainer {
  /// Create new [SuperIconButton] which has a [Container] (parent) with
  /// a [IconButton] (child) inside.
  /// Thus its params is the combination of [Container]'s
  /// params and [IconButton]'s  params.
  ///
  /// <b>Params of the parent widget is:</b>
  ///
  /// - `key` : key of parent widget.
  /// - `alignment`: an align value from [AlignmentDirectional].
  /// - `margin`: the margin between this widget vs. its parent.
  /// - `padding`: the padding between this widget vs. its child.
  /// - `color` and `decoration`: only one params is valid. It's the
  /// decoration to paint behind the [child].
  /// - `foregroundDecoration`: It's the decoration to paint in front of the [child].
  /// - `width` and `height` values include the padding. It can be a double
  ///  value like 100.0, or [double.infinity], or null, like the size value of
  ///  [Container].
  /// - `constraints`: like [BoxConstraints] of [Container].
  /// - `transform`: the transformation matrix to apply before painting the parent.
  /// - `flex`: same as `flex` value which is used in [Flexible].
  ///  - If flex=0: [child] will be wrapped inside a [Wrap] widget.
  ///  - If flex>0: [child] will be wrapped inside a [Expanded] with flex value.
  ///  - If flex is null, just return [child] widget.
  /// - `ignoreImplicitWidthHeight`: default is `true`. As we know, `width` and
  /// `height` of [child] might depends on [alignment] or its parent's size.
  /// But in some cases we need its size is exactly wrap its [child], for
  /// example the container of [Text] wrap the size of [Text] instead of
  /// expanding to full width. Note: if we specify `width` or `height` then
  /// [ignoreImplicitWidthHeight] will be set to false.
  /// - `onLongPressed`: action when long-press on parent widget.
  ///
  /// <b>Params of the child widget is:</b>
  ///
  /// - `childKey`: [Key] of [IconButton].
  /// - `iconSize`: the size of the icon inside the button. Must not null,
  /// it defaults to 24.0.
  /// - `childPadding`: the padding around the button's icon. The entire
  /// padded icon will react to input gestures. Must not be null. It defaults
  /// to 8.0 padding on all sides.
  /// - `childAlignment`: defines how the icon is positioned within the
  /// IconButton. Must not null. It defaults to [Alignment.center].
  /// - `icon`: the icon to display inside the button.
  /// - `childColor`: the color to use for the icon inside the button, if the
  /// icon is enabled.
  /// - `focusColor`: the color for the button's icon when it has the input focus.
  /// - `hoverColor`: the color for the button's icon when a pointer is hovering over it.
  /// - `highlightColor`: the secondary color of the button when the button is
  /// in the down (onPressed) state
  /// - `splashColor`: the primary color of the button when the button is
  /// in the down (onPressed) state
  /// - `disabledColor`: the color to use for the icon inside the button, if
  /// the icon is disabled.
  /// - `onPressed`: action when press on parent widget.
  /// - `focusNode`: {@macro flutter.widgets.Focus.focusNode}
  /// - `autofocus`: {@macro flutter.widgets.Focus.autofocus}
  /// - `tooltip`: text that describes the action that will occur when the button is pressed.
  SuperIconButton({
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
    bool ignoreImplicitWidthHeight = true,
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
          margin: margin,
          color: color,
          decoration: decoration,
          foregroundDecoration: foregroundDecoration,
          width: width,
          height: height,
          constraints: constraints,
          flex: flex,
          ignoreImplicitWidthHeight: ignoreImplicitWidthHeight,
          onPressed: onPressed,
          onLongPressed: onLongPressed,
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
