import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';
import 'base/safe_widget.dart';

/// [SuperCard] is a [Container] with [Card] inside.
class SuperCard extends BaseContainer {
  /// Create new [SuperCard] which has a [Container] (parent) with
  /// a [Card] (child) inside.
  /// Thus its params is the combination of [Container]'s
  /// params and [Card]'s  params.
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
  /// - `onPressed`: action when press on parent widget.
  /// - `onLongPressed`: action when long-press on parent widget.
  /// - `enableInkWell` and `splashColor`: WILL BE AVAILABLE IN NEXT VERSION.
  /// Wrap this widget inside an InkWell. Default to `FALSE`.
  ///  - If `enableInkWell` is not true, then just return this `widget`.
  ///  - If `enableInkWell` is true & splashColor is null, then `splashColor`
  /// will be automatically gotten from Theme instead.
  ///
  /// <b>Params of the child widget is:</b>
  ///
  /// - `childKey`: [Key] of [Card].
  /// - `child`: child widget of [Card].
  /// - `childColor`: [Color] of [Card].
  /// - `elevation`: the z-coordinate at which to place this card. This
  /// controls the size of the shadow below the card. If this property is null
  /// then [ThemeData.cardTheme.elevation] is used, if that's null, the
  /// default value is 1.0.
  /// - `shape`: [ShapeBorder] of [Card]. Default is [RoundedRectangleBorder]
  /// with a circular corner radius of 4.0.
  /// - `borderOnForeground`: default is true: whether to paint the shape
  /// border in front of the child of [Card].
  /// - `margin`: the empty space that surrounds the card. Defines the card's
  /// outer [Container.margin].
  ///  - If this property is null then [ThemeData.cardTheme.margin] is used.
  ///  - If that's null, the default margin is 4.0 logical pixels on all sides.
  /// - `padding`: the padding between [Card] vs. its child.
  /// - `clipBehavior`: {@macro flutter.widgets.Clip}. If this property is null
  /// then [ThemeData.cardTheme.clipBehavior] is used. If that's null then the
  /// behavior will be [Clip.none].
  /// - `semanticContainer`: Whether this widget represents a single semantic
  /// container, or if false, a collection of individual semantic nodes.
  /// Defaults to true.
  SuperCard({
    Key key,
    AlignmentGeometry alignment,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    int flex,
    bool ignoreImplicitWidthHeight = false,
    bool enableInkWell = false,
    // ignore: avoid_unused_constructor_parameters
    Color splashColor,
    VoidCallback onPressed,
    VoidCallback onLongPressed,
    Matrix4 transform,
    Key childKey,
    Color childColor,
    double elevation,
    ShapeBorder shape,
    bool borderOnForeground = true,
    EdgeInsetsGeometry margin,
    EdgeInsetsGeometry padding,
    Clip clipBehavior,
    Widget child,
    bool semanticContainer = true,
  })  : assert(elevation == null || elevation >= 0.0),
        assert(borderOnForeground != null),
        assert(ignoreImplicitWidthHeight != null),
        assert(enableInkWell != null),
        assert(semanticContainer != null),
        super(
          key: key,
          alignment: alignment,
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
          child: Card(
            key: childKey,
            color: childColor,
            elevation: elevation,
            shape: shape,
            borderOnForeground: borderOnForeground,
            margin: margin,
            clipBehavior: clipBehavior,
            semanticContainer: semanticContainer,
            child: safePadding(padding: padding, child: child),
          ),
        );
}
