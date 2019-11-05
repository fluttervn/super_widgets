import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// [SuperClipRRect] is a [Container] with [ClipRRect] inside.
class SuperClipRRect extends BaseContainer {
  /// Create new [SuperClipRRect] which has a [Container] (parent) with
  /// a [ClipRRect] (child) inside.
  /// Thus its params is the combination of [Container]'s
  /// params and [ClipRRect]'s  params.
  ///
  /// Params of the parent widget is:
  ///
  /// - `key` : key of parent widget.
  /// - `alignment`: an align value from [AlignmentDirectional].
  /// - `margin`: the margin between [ClipRRect] vs. its child.
  /// - `padding`: the padding between [ClipRRect] vs. its child.
  /// - `color` and `decoration`: only one params is valid. It's the
  /// decoration to paint behind the `child`.
  /// - `foregroundDecoration`: It's the decoration to paint in front of the `child`.
  /// - `width` and `height` values include the padding. It can be a double
  ///  value like 100.0, or [double.infinity], or null, like the size value of
  ///  [Container].
  /// - `constraints`: like [BoxConstraints] of [Container].
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
  /// - `onPressed`: action when press on parent widget.
  /// - `onLongPressed`: action when long-press on parent widget.
  /// - `transform`: the transformation matrix to apply before painting the parent.
  ///
  /// Params of the child widget is:
  ///
  /// - `childKey`: [Key] of [ClipRRect].
  /// - `child`: child widget of [ClipRRect].
  /// - `borderRadius`: the border radius of the rounded corners.
  ///  - Values are clamped so that horizontal and vertical radii sums do not
  ///  exceed width/height.
  ///   - This value is ignored if [clipper] is non-null.
  /// - `clipper`: if non-null, determines which clip to use.
  /// - `clipBehavior`: {@macro flutter.clipper.clipBehavior}. Default is [Clip.antiAlias]
  SuperClipRRect({
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
    VoidCallback onPressed,
    VoidCallback onLongPressed,
    Matrix4 transform,
    Key childKey,
    @required Widget child,
    BorderRadius borderRadius,
    CustomClipper<RRect> clipper,
    Clip clipBehavior = Clip.antiAlias,
  })  : assert(borderRadius != null || clipper != null),
        assert(clipBehavior != null),
        assert(ignoreImplicitWidthHeight != null),
        assert(clipBehavior != null),
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
          flex: flex,
          ignoreImplicitWidthHeight: ignoreImplicitWidthHeight,
          onPressed: onPressed,
          onLongPressed: onLongPressed,
          margin: margin,
          transform: transform,
          child: ClipRRect(
            key: childKey,
            borderRadius: borderRadius,
            clipper: clipper,
            clipBehavior: clipBehavior,
            child: child,
          ),
        );
}
