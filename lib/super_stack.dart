import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// [SuperStack] is a [Container] with [Stack] inside.
class SuperStack extends BaseContainer {
  /// Create new [SuperStack] which has a [Container] (parent) with
  /// a [Stack] (child) inside.
  /// Thus its params is the combination of [Container]'s
  /// params and [Stack]'s  params.
  ///
  /// <b>Params of the parent widget is:</b>
  ///
  /// - `key` : key of parent widget.
  /// - `alignment`: an align value from [AlignmentDirectional].
  /// - `margin`: the margin between this widget vs. its parent.
  /// - `padding`: the padding between this widget vs. the [Stack].
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
  /// expanding to full width.
  ///
  /// <b>Params of the child widget is:</b>
  ///
  /// - `childKey`: [Key] of [Stack].
  /// - `children`: list of children widget of [Stack]
  /// - `fit`: How to size the non-positioned children in the stack. Default is [StackFit.loose].
  /// - `overflow`: Whether overflowing children should be clipped. Default is [Overflow.clip].
  /// - `childAlignment`: How to align the non-positioned and
  /// partially-positioned children in the stack. Default is
  /// [AlignmentDirectional.topStart].
  /// - `textDirection`: the text direction with which to resolve [alignment].
  /// Defaults to the ambient [Directionality].
  SuperStack({
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
    Key childKey,
    List<Widget> children,
    AlignmentGeometry childAlignment,
    StackFit fit = StackFit.loose,
    TextDirection textDirection,
    Overflow overflow = Overflow.clip,
  }) : super(
          key: key,
          alignment: alignment ?? AlignmentDirectional.topStart,
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
          transform: transform,
          child: Stack(
            key: childKey,
            children: children ?? <Widget>[],
            fit: fit,
            alignment: childAlignment ?? AlignmentDirectional.topStart,
            textDirection: textDirection,
            overflow: overflow,
          ),
        );
}
