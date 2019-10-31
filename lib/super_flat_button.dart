import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// SuperFlatButton] is a [Container] with [FlatButton] inside
class SuperFlatButton extends BaseContainer {
  /// Create new [SuperFlatButton] which has a [Container] (parent) with
  /// a [FlatButton] (child) inside.
  /// Thus its params is the combination of [Container]'s
  /// params and [FlatButton]'s  params.
  ///
  /// <b>Params of the parent widget is:</b>
  ///
  /// - `key` : Key of parent widget
  /// - `alignment`: an align value from [AlignmentDirectional]
  /// - `color` and `decoration`: only one params is valid. It's the
  /// decoration to paint behind the [child].
  /// - `foregroundDecoration`: It's the decoration to paint in front of the [child].
  /// - `width` and `height` values include the padding. It can be a double
  ///  value like 100.0, or [double.infinity], or null, like the size value of
  ///  [Container]
  /// - `constraints`: like [BoxConstraints] of [Container]
  /// - `transform`: the transformation matrix to apply before painting the parent.
  /// - `flex`: same as `flex` value which is used in [Flexible].
  ///  - If flex=0: [child] will be wrapped inside a [Wrap] widget
  ///  - If flex>0: [child] will be wrapped inside a [Expanded] with flex value
  ///  - If flex is null, just return [child] widget
  /// - `ignoreImplicitWidthHeight`: default is `true`. As we know, `width` and
  /// `height` of [child] might depends on [alignment] or its parent's size.
  /// But in some cases we need its size is exactly wrap its [child], for
  /// example the container of [Text] wrap the size of [Text] instead of
  /// expanding to full width.
  /// - `onLongPressed`: action when long-press on parent widget
  /// - `enableInkWell` and `splashColor`: Wrap this widget inside an
  /// [InkWell]. Its default value is `FALSE`.
  ///  - If [enableInkWell] is not true, then just return this [widget].
  ///  - If [enableInkWell] is true splashColor is null, then `splashColor`
  /// will be automatically gotten from Theme instead.
  ///
  /// <b>Params of the child widget is:</b>
  ///
  /// - `childKey`: [Key] of [FlatButton]
  /// - `child`: the button's label.
  /// - `onPressed`: is `onPressed` action of button
  /// - `onHighlightChanged`: is `onHighlightChanged` action of button
  /// - `textTheme`: defines the button's base colors, and the defaults for the
  /// button's minimum size, internal padding, and shape. Defaults to
  /// `ButtonTheme.of(context).textTheme`.
  /// - `textColor`: the color to use for this button's text.
  /// - `disabledTextColor`: the color to use for this button's text when the
  /// - `childColor`: the button's fill color, displayed by its [Material],
  /// while it is in its default (unpressed, [enabled]) state.
  /// - `disabledColor`: the fill color of the button when the button is disabled.
  /// - `focusColor`: the fill color of the button's [Material] when it has the
  /// input focus.
  /// - `hoverColor`: the fill color of the button's [Material] when a pointer
  /// is hovering over it.
  /// - `highlightColor`: the highlight color of the button's [InkWell].
  /// - `splashColor`: the color to use for this button's text.
  /// - `colorBrightness`: the theme brightness to use for this button.
  /// - `childPadding`: the internal padding for the button's [child].
  /// - `shape`: the shape of the button's [Material]. The button's highlight
  /// and splash are clipped to this shape.
  /// - `clipBehavior`: {@macro flutter.widgets.Clip}
  /// - `focusNode`: {@macro flutter.widgets.Focus.focusNode}
  /// - `autofocus`: {@macro flutter.widgets.Focus.autofocus}
  /// - `materialTapTargetSize`: configures the minimum size of the tap target.
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
