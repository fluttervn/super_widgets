import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../base/base_container.dart';

/// SuperRaisedButton] is a [Container] with [RaisedButton] inside.
class SuperRaisedButton extends BaseContainer {
  /// Create new [SuperRaisedButton] which has a [Container] (parent) with
  /// a [RaisedButton] (child) inside.
  /// Thus its params is the combination of [Container]'s
  /// params and [RaisedButton]'s  params.
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
  /// - `enableInkWell` and `splashColor`: WILL BE AVAILABLE IN NEXT VERSION.
  /// Wrap this widget inside an InkWell. Default to `FALSE`.
  ///  - If `enableInkWell` is not true, then just return this `widget`.
  ///  - If `enableInkWell` is true & splashColor is null, then `splashColor`
  /// will be automatically gotten from Theme instead.
  ///
  /// <b>Params of the child widget is:</b>
  ///
  /// - `childKey`: [Key] of [RaisedButton].
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
  /// - `disabledColor`: the fill color of the button when the button is disabled.
  /// - `highlightColor`: the highlight color of the button's [InkWell].
  /// - `splashColor`: the color to use for this button's text.
  /// - `colorBrightness`: the theme brightness to use for this button.
  /// - `elevation`: the z-coordinate at which to place this button relative to
  /// its parent. Defaults to 2.
  /// - `highlightElevation`: the elevation for the button's [Material] relative
  /// to its parent when the button is enabled and pressed. Defaults to 8.0.
  /// - `disabledElevation`: the elevation for the button's [Material] relative
  /// to its parent when the button is not enabled. Defaults to 0.0.
  /// - `childPadding`: the internal padding for the button's `child`.
  /// - `shape`: the shape of the button's [Material]. The button's highlight
  /// and splash are clipped to this shape.
  /// - `clipBehavior`: {@macro flutter.widgets.Clip}
  /// - `materialTapTargetSize`: configures the minimum size of the tap target.
  /// - `animationDuration`: Defines the duration of animated changes for
  /// [shape] and [elevation].
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
    int flex,
    bool ignoreImplicitWidthHeight = true,
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
        assert(ignoreImplicitWidthHeight != null),
        assert(alignment != null),
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
