import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// [SuperIndexedStack] is a [Container] with [IndexedStack] inside.
class SuperIndexedStack extends BaseContainer {
  /// Create new [SuperStack] which has a [Container] (parent) with
  /// a [IndexedStack] (child) inside.
  /// Thus its params is the combination of [Container]'s
  /// params and [IndexedStack]'s  params.
  ///
  /// <b>Params of the parent widget is:</b>
  ///
  /// - `key` : key of parent widget.
  /// - `alignment`: an align value from [AlignmentDirectional].
  /// - `margin`: the margin between this widget vs. its parent.
  /// - `padding`: the padding between this widget vs. the [IndexedStack].
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
  /// - `ignoreImplicitWidthHeight`: defaults to `FALSE`. As we know, `width` and
  /// `height` of [child] might depends on [alignment] or its parent's size.
  /// But in some cases we need its size is exactly wrap its [child], for
  /// example the container of [Text] wrap the size of [Text] instead of
  /// expanding to full width. Note: if we specify `width` or `height` then
  /// [ignoreImplicitWidthHeight] will be set to false.
  ///
  /// <b>Params of the child widget is:</b>
  ///
  /// - `childKey`: [Key] of [IndexedStack].
  /// - `children`: list of children widget of [IndexedStack]
  /// - `sizing`: How to size the non-positioned children in the [IndexedStack].
  /// Default is [StackFit.loose].
  /// - `index`: the index of the child of [IndexedStack] to show.
  /// - `childAlignment`: How to align the non-positioned and
  /// partially-positioned children in the [IndexedStack]. Default is
  /// [AlignmentDirectional.topStart].
  /// - `textDirection`: the text direction with which to resolve [alignment].
  /// Defaults to the ambient [Directionality].
  SuperIndexedStack({
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
    Matrix4 transform,
    Key childKey,
    List<Widget> children,
    AlignmentGeometry childAlignment,
    StackFit sizing = StackFit.loose,
    TextDirection textDirection,
    int index = 0,
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
          child: IndexedStack(
            children: children ?? <Widget>[],
            sizing: sizing,
            alignment: childAlignment ?? AlignmentDirectional.topStart,
            key: childKey,
            textDirection: textDirection,
            index: index,
          ),
        );
}
