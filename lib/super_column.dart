import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// [SuperColumn] is a [Container] with [Column] inside.
class SuperColumn extends BaseContainer {
  /// Create new [SuperColumn] which has a [Container] (parent) with
  /// a [Column] (child) inside.
  /// Thus its params is the combination of [Container]'s
  /// params and [Column]'s  params.
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
  /// - `flex`: same as `flex` value which is used in [Flexible].
  ///  - If flex=0: [child] will be wrapped inside a [Wrap] widget.
  ///  - If flex>0: [child] will be wrapped inside a [Expanded] with flex value.
  ///  - If flex is null, just return [child] widget.
  /// - `ignoreImplicitWidthHeight`: defaults to `FALSE`. As we know, `width` and
  /// `height` of [child] might depends on [alignment] or its parent's size.
  /// But in some cases we need its size is exactly wrap its [child], for
  /// example the container of [Text] wrap the size of [Text] instead of
  /// expanding to full width. Note: if we specify `width` or `height` then
  /// [ignoreImplicitWidthHeight] will be set to false.
  ///
  /// <b>Params of the child widget is:</b>
  ///
  /// - [childKey]: [Key] of [Column]
  /// - [children]: list of children widget of [Column]. Default is empty list.
  /// - [mainAxisAlignment]: how the [children] should be placed along the main
  /// axis. Default is [MainAxisAlignment.start]
  /// - [mainAxisSize]: how much space should be occupied in the main axis.
  /// Default is [MainAxisSize.max]
  /// - [crossAxisAlignment]: how the [children] should be placed along the
  /// cross axis. Default is [CrossAxisAlignment.center]
  /// - [textDirection]: determines the order to lay [children] out horizontally
  /// and how to interpret `start` and `end` in the horizontal direction.
  /// Defaults to the ambient [Directionality].
  /// - [verticalDirection]: determines the order to lay children out vertically
  /// and how to interpret `start` and `end` in the vertical direction.
  /// Defaults to [VerticalDirection.down].
  /// - [textBaseline]: if aligning items according to their baseline, which
  /// baseline to use.
  SuperColumn({
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
    Key childKey,
    List<Widget> children,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
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
          flex: flex,
          ignoreImplicitWidthHeight: ignoreImplicitWidthHeight,
          onPressed: onPressed,
          onLongPressed: onLongPressed,
          transform: transform,
          child: Column(
            key: childKey,
            children: children ?? <Widget>[],
            mainAxisAlignment: mainAxisAlignment,
            mainAxisSize: mainAxisSize,
            crossAxisAlignment: crossAxisAlignment,
            verticalDirection: verticalDirection,
            textDirection: textDirection,
            textBaseline: textBaseline,
          ),
        );
}
