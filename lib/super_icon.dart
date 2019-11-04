import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// [SuperIcon] is a [Container] with [Icon] inside.
class SuperIcon extends BaseContainer {
  /// Create new [SuperIcon] which has a [Container] (parent) with
  /// a [Icon] (child) inside.
  /// Thus its params is the combination of [Container]'s
  /// params and [Icon]'s  params.
  ///
  /// <b>Params of the parent widget is:</b>
  ///
  /// - `key` : key of parent widget.
  /// - `alignment`: an align value from [AlignmentDirectional].
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
  /// - `ignoreImplicitWidthHeight`: defaults to `TRUE`. As we know, `width` and
  /// `height` of [child] might depends on [alignment] or its parent's size.
  /// But in some cases we need its size is exactly wrap its [child], for
  /// example the container of [Text] wrap the size of [Text] instead of
  /// expanding to full width. Note: if we specify `width` or `height` then
  /// [ignoreImplicitWidthHeight] will be set to false.
  /// - `onPressed`: action when press on parent widget.
  /// - `onLongPressed`: action when long-press on parent widget.
  /// - `enableInkWell` and `splashColor`: Wrap this widget inside an
  /// [InkWell]. Default to `FALSE`.
  ///  - If [enableInkWell] is not true, then just return this [widget].
  ///  - If [enableInkWell] is true splashColor is null, then `splashColor`
  /// will be automatically gotten from Theme instead.
  ///
  /// <b>Params of the child widget is:</b>
  ///
  /// - `childKey`: [Key] of [Icon].
  /// - `icon`: the icon to display. The available icons are described in [Icons].
  /// - `size`: Since [Icon] is squared, we must specify the size of the icon
  /// in logical pixels.
  /// - `childColor`: the color to use when drawing the icon. Defaults to the
  /// current [IconTheme] color, if any.
  /// - `semanticLabel`: semantic label for the icon.
  /// - `textDirection`: the text direction to use for rendering the icon. If
  /// this is null, the ambient [Directionality] is used instead.
  SuperIcon(
    IconData icon, {
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
    Matrix4 transform,
    int flex,
    bool ignoreImplicitWidthHeight = true,
    bool enableInkWell = false,
    Color splashColor,
    VoidCallback onPressed,
    VoidCallback onLongPressed,
    Key childKey,
    double size,
    Color childColor,
    String semanticLabel,
    TextDirection textDirection,
  }) : super(
          key: key,
          alignment: alignment,
          padding: padding,
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
          margin: margin,
          transform: transform,
          child: Icon(
            icon,
            key: childKey,
            size: size,
            color: childColor,
            semanticLabel: semanticLabel,
            textDirection: textDirection,
          ),
        );
}
