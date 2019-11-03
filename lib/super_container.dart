import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// [SuperContainer] is a [BaseContainer] with its method exposed for public using.
class SuperContainer extends BaseContainer {
  /// Create new [SuperContainer] with the following params:
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
  /// - `ignoreImplicitWidthHeight`: default is `TRUE`. As we know, `width` and
  /// `height` of [child] might depends on [alignment] or its parent's size.
  /// But in some cases we need its size is exactly wrap its [child], for
  /// example the container of [Text] wrap the size of [Text] instead of
  /// expanding to full width.
  /// - `onPressed`: action when press on parent widget.
  /// - `onLongPressed`: action when long-press on parent widget.
  /// - `enableInkWell` and `splashColor`: Wrap this widget inside an
  /// [InkWell]. Its default value is `FALSE`.
  ///  - If [enableInkWell] is not true, then just return this [widget].
  ///  - If [enableInkWell] is true splashColor is null, then `splashColor`
  /// will be automatically gotten from Theme instead.
  SuperContainer({
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
    bool ignoreImplicitWidthHeight = false,
    bool enableInkWell = false,
    Color splashColor,
    VoidCallback onPressed,
    VoidCallback onLongPressed,
    Widget child,
  }) : super(
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
          transform: transform,
          flex: flex,
          ignoreImplicitWidthHeight: ignoreImplicitWidthHeight,
          onPressed: onPressed,
          onLongPressed: onLongPressed,
          child: child,
        );
}
