import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// SuperOutlineButton] is a [Container] with [OutlineButton] inside.
class SuperOutlineButton extends BaseContainer {
  /// Create new [SuperOutlineButton] which has a [Container] (parent) with
  /// a [OutlineButton] (child) inside.
  /// Thus its params is the combination of [Container]'s
  /// params and [OutlineButton]'s  params.
  ///
  /// <b>Params of the parent widget is:</b>
  ///
  /// - `key` : key of parent widget.
  /// - `alignment`: an align value from [AlignmentDirectional].
  /// - `color` and `decoration`: only one params is valid. It's the
  /// decoration to paint behind the `child`.
  /// - `foregroundDecoration`: It's the decoration to paint in front of the `child`.
  /// - `width` and `height` values include the padding. It can be a double
  ///  value like 100.0, or [double.infinity], or null, like the size value of
  ///  [Container].
  /// - `constraints`: like [BoxConstraints] of [Container].
  /// - `transform`: the transformation matrix to apply before painting the parent.
  /// - `flex`: same as `flex` value which is used in [Flexible].
  ///  - If flex=0: this widget will be wrapped inside a [Wrap] widget.
  ///  - If flex>0: this widget will be wrapped inside a [Expanded] with flex value.
  ///  - Default flex is null, it means just return this widget.
  /// - `ignoreImplicitWidthHeight`: default is `true`. As we know, `width` and
  /// `height` of `child` might depends on `alignment` or its parent's size.
  /// But in some cases we need its size is exactly wrap its `child`, for
  /// example the container of [Text] wrap the size of [Text] instead of
  /// expanding to full width. Note: if we specify `width` or `height` then
  /// [ignoreImplicitWidthHeight] will be set to false.
  /// - `onLongPressed`: action when long-press on parent widget.
  ///
  /// <b>Params of the child widget is:</b>
  ///
  /// - `childKey`: [Key] of [OutlineButton].
  /// - `child`: the button's label.
  /// - `onPressed`: is `onPressed` action of button
  /// - `onHighlightChanged`: is `onHighlightChanged` action of button
  /// - `textTheme`: defines the button's base colors, and the defaults for the
  /// button's minimum size, internal padding, and shape. Defaults to
  /// `ButtonTheme.of(context).textTheme`.
  /// - `textColor`: the color to use for this button's text.
  /// - `disabledTextColor`: the color to use for this button's text when the
  /// - `childColor`: the button's fill color, displayed by its [Material],
  /// while it is in its default (unpressed, `enabled`) state.
  /// - `focusColor`: the fill color of the button's [Material] when it has the
  /// input focus.
  /// - `hoverColor`: the fill color of the button's [Material] when a pointer
  /// is hovering over it.
  /// - `highlightColor`: the highlight color of the button's [InkWell].
  /// - `splashColor`: the color to use for this button's text.
  /// - `highlightElevation`: the elevation for the button's [Material] relative
  /// to its parent when the button is [enabled] and pressed. Defaults to 8.0.
  /// - `disabledElevation`: the elevation for the button's [Material] relative
  /// to its parent when the button is not [enabled]. Defaults to 0.0.
  /// - `highlightedBorderColor`: the outline border's color when the button is
  /// [enabled] and pressed.
  /// - `childPadding`: the internal padding for the button's `child`.
  /// - `shape`: the shape of the button's [Material]. The button's highlight
  /// and splash are clipped to this shape.
  /// - `clipBehavior`: {@macro flutter.widgets.Clip}
  /// - `focusNode`: {@macro flutter.widgets.Focus.focusNode}
  /// - `autofocus`: {@macro flutter.widgets.Focus.autofocus}
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
    int flex,
    bool ignoreImplicitWidthHeight = true,
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
    Clip clipBehavior = Clip.none,
    FocusNode focusNode,
    bool autofocus = false,
  })  : assert(highlightElevation == null || highlightElevation >= 0.0),
        assert(autofocus != null),
        assert(ignoreImplicitWidthHeight != null),
        assert(clipBehavior != null),
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
          ignoreImplicitWidthHeight: ignoreImplicitWidthHeight,
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
            clipBehavior: clipBehavior,
            focusNode: focusNode,
            autofocus: autofocus,
            child: child,
          ),
        );
}
