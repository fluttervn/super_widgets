import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';
import 'base/safe_widget.dart';

/// [SuperCard] is a [Container] with [Card] inside
class SuperCard extends BaseContainer {
  /// Create new [SuperCard] which has a [Container] (parent) with
  /// a [Card] (child) inside.
  /// Thus its params is the combination of [Container]'s
  /// params and [Card]'s  params.
  ///
  /// Params of the parent widget is:
  ///
  /// - `key` : Key of parent widget
  /// - `alignment`: an align value from [AlignmentDirectional]
  /// - `padding`: a padding value from [EdgeInsetsGeometry]
  /// - `color` and `decoration`: only one params is valid. It's the
  /// decoration to paint behind the [child].
  /// - `foregroundDecoration`: It's the decoration to paint in front of the [child].
  /// - `foregroundDecoration`: It's the decoration to paint in front of the [child].
  /// - `width` and `height` values include the padding. It can be a double
  ///  value like 100.0, or [double.infinity], or null, like the size value of
  ///  [Container]
  /// - `constraints`: like [BoxConstraints] of [Container]
  /// - `flex`: same as `flex` value which is used in [Flexible].
  ///  - If flex=0: [child] will be wrapped inside a [Wrap] widget
  ///  - If flex>0: [child] will be wrapped inside a [Expanded] with flex value
  ///  - If flex is null, just return [child] widget
  /// - `ignoreImplicitWidthHeight`: default is `true`. As we know, `width` and
  /// `height` of [child] might depends on [alignment] or its parent's size.
  /// But in some cases we need its size is exactly wrap its [child], for
  /// example the container of [Text] wrap the size of [Text] instead of
  /// expanding to full width.
  /// - `onPressed`: action when press on parent widget
  /// - `onLongPressed`: action when long-press on parent widget
  /// - `transform`: the transformation matrix to apply before painting the parent.
  ///
  /// Params of the child widget is:
  ///
  /// - `childKey`: [Key] of [Card]
  /// - `childColor`: [Color] of [Card]
  /// - `elevation`: `elevation` of [Card]. Default is 1.0
  /// - `shape`: [ShapeBorder] of [Card]. Default is [RoundedRectangleBorder]
  /// with a circular corner radius of 4.0.
  /// - `borderOnForeground`: default is true: whether to paint the shape
  /// border in front of the child of [Card].
  ///
  SuperCard({
    Key key,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    EdgeInsetsGeometry padding,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    int flex,
    bool ignoreImplicitWidthHeight = false,
    VoidCallback onPressed,
    VoidCallback onLongPressed,
    Matrix4 transform,
    Key childKey,
    Color childColor,
    double elevation,
    ShapeBorder shape,
    bool borderOnForeground = true,
    EdgeInsetsGeometry margin,
    EdgeInsetsGeometry childPadding,
    Clip clipBehavior,
    Widget child,
    bool semanticContainer = true,
    bool enableInkWell = false,
    Color splashColor,
  })  : assert(elevation == null || elevation >= 0.0),
        assert(borderOnForeground != null),
        assert(enableInkWell != null),
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
          transform: transform,
          child: safeInkWell(
            enableInkWell: enableInkWell,
            splashColor: splashColor,
            child: Card(
              key: childKey,
              color: childColor,
              elevation: elevation,
              shape: shape,
              borderOnForeground: borderOnForeground,
              margin: margin,
              clipBehavior: clipBehavior,
              child: safePadding(padding: childPadding, child: child),
              semanticContainer: semanticContainer,
            ),
          ),
        );
}
