import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../base/base_container.dart';
import '../base/material_holder.dart';

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
    // Container key
    Key pKey,
    // Container position & size
    AlignmentGeometry pAlignment,
    Matrix4 pTransform,
    EdgeInsetsGeometry pMargin,
    double pMarginAllPx,
    EdgeInsetsGeometry pPadding,
    double pPaddingAllPx,
    double pWidth,
    double pHeight,
    int pFlex,
    BoxConstraints pConstraints,
    bool pIgnoreImplicitWidthHeight = false,
    // Container style
    Color pColor,
    Decoration pDecoration,
    Decoration pForegroundDecoration,
    bool pEnableInkWell = false,
    Color pSplashColor,
    // Container action
    VoidCallback onPressed,
    VoidCallback onLongPressed,
    // ClipRRect key
    Key cKey,
    // ClipRRect position & size
    AlignmentGeometry cAlignment,
    EdgeInsetsGeometry cMargin,
    double cMarginAllPx,
    EdgeInsetsGeometry cPadding,
    double cPaddingAllPx,
    int cFlex,
    // ClipRRect style
    Color cColor,
    Decoration cDecoration,
    Decoration cForegroundDecoration,
    MaterialHolder materialHolder,
    // Specific property of ClipRRect
    BorderRadius borderRadius,
    CustomClipper<RRect> clipper,
    Clip clipBehavior = Clip.antiAlias,
    // Stack child
    // ignore: always_put_required_named_parameters_first
    @required Widget child,
  })  : assert(pIgnoreImplicitWidthHeight != null),
        assert(pEnableInkWell != null),
        assert(borderRadius != null || clipper != null),
        assert(clipBehavior != null),
        assert(clipBehavior != null),
        super(
          // Parent key
          key: pKey,
          // Parent position & size
          alignment: pAlignment,
          transform: pTransform,
          margin: pMargin,
          marginAllPx: pMarginAllPx,
          padding: pPadding,
          paddingAllPx: pPaddingAllPx,
          width: pWidth,
          height: pHeight,
          flex: pFlex,
          constraints: pConstraints,
          ignoreImplicitWidthHeight: pIgnoreImplicitWidthHeight,
          // Parent style
          color: pColor,
          decoration: pDecoration,
          foregroundDecoration: pForegroundDecoration,
          enableInkWell: pEnableInkWell,
          splashColor: pSplashColor,
          // Parent action
          onPressed: onPressed,
          onLongPressed: onLongPressed,
          child: BaseContainer(
            // Child position & size
            margin: cMargin,
            marginAllPx: cMarginAllPx,
            padding: cPadding,
            paddingAllPx: cPaddingAllPx,
            flex: cFlex,
            // Child style
            color: cColor,
            decoration: cDecoration,
            foregroundDecoration: cForegroundDecoration,
            materialHolder: materialHolder,
            // Finally the child
            child: ClipRRect(
              key: cKey,
              borderRadius: borderRadius,
              clipper: clipper,
              clipBehavior: clipBehavior,
              child: child,
            ),
          ),
        );
}
