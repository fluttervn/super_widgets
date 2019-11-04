import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// [SuperInkWell] is a [InkWell] with [Container] inside.
class SuperInkWell extends InkWell {
  /// Create new [SuperInkWell] which has a [InkWell] (parent) with
  /// a [Container] (child) inside.
  /// Thus its params is the combination of [InkWell]'s
  /// params and [Container]'s  params.
  ///
  /// <b>Params of the parent widget is:</b>
  ///
  /// - `key`: key of parent widget.
  /// - `onTap`: called when the user taps this part of the material.
  /// - `onDoubleTap`: called when the user taps down this part of the material.
  /// - `onLongPress`: called when the user long-presses on this part of the material.
  /// - `onTapDown`: called when the user taps down this part of the material.
  /// - `onTapCancel`: called when the user cancels a tap that was started on
  /// this part of the material.
  /// - `onHighlightChanged`: called when this part of the material either
  /// becomes highlighted or stops being highlighted.
  /// - `highlightColor`: the highlight color of the ink response when pressed.
  /// If this property is null then the highlight color of the theme,
  /// [ThemeData.highlightColor], will be used.
  /// - `splashColor`: the splash color of the ink response. If this property
  /// is null then the splash color of the theme, [ThemeData.splashColor],
  /// will be used.
  /// - `splashFactory`: defines the appearance of the splash. Defaults to the
  /// value of the theme's splash factory: [ThemeData.splashFactory].
  /// - `radius`: the radius of the ink splash.
  /// - `borderRadius`: the clipping radius of the containing rect. This is
  /// effective only if [customBorder] is null.
  /// - `customBorder`: the custom clip border which overrides [borderRadius].
  /// - `enableFeedback`: whether detected gestures should provide acoustic
  /// and/or haptic feedback.
  /// - `excludeFromSemantics`: whether to exclude the gestures introduced by
  /// this widget from the semantics tree.
  ///
  /// <b>Params of the child widget is:</b>
  ///
  /// - `alignment`: an align value from [AlignmentDirectional].
  /// - `margin`: the margin between [InkWell] vs the inner [Container].
  /// - `padding`: the padding between [Container] vs. its child.
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
  SuperInkWell({
    Key key,
    GestureTapCallback onTap,
    GestureTapCallback onDoubleTap,
    GestureLongPressCallback onLongPress,
    GestureTapDownCallback onTapDown,
    GestureTapCancelCallback onTapCancel,
    ValueChanged<bool> onHighlightChanged,
    Color highlightColor,
    Color splashColor,
    InteractiveInkFeatureFactory splashFactory,
    double radius,
    BorderRadius borderRadius,
    ShapeBorder customBorder,
    bool enableFeedback = true,
    bool excludeFromSemantics = false,
    Key childKey,
    Widget child,
    AlignmentGeometry alignment = AlignmentDirectional.center,
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
    Matrix4 transform,
  }) : super(
          key: key,
          onTap: onTap ?? () {},
          onDoubleTap: onDoubleTap,
          onLongPress: onLongPress,
          onTapDown: onTapDown,
          onTapCancel: onTapCancel,
          onHighlightChanged: onHighlightChanged,
          highlightColor: highlightColor,
          splashColor: splashColor,
          splashFactory: splashFactory,
          radius: radius,
          borderRadius: borderRadius,
          customBorder: customBorder,
          enableFeedback: enableFeedback,
          excludeFromSemantics: excludeFromSemantics,
          child: BaseContainer(
            key: childKey,
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
            child: child,
          ),
        );
}
