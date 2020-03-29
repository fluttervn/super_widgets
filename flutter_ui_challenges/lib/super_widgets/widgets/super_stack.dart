import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../base/super_widgets_base_index.dart';

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
    // Stack key
    Key cKey,
    // Stack position & size
    AlignmentGeometry cAlignment,
    EdgeInsetsGeometry cMargin,
    double cMarginAllPx,
    EdgeInsetsGeometry cPadding,
    double cPaddingAllPx,
    int cFlex,
    // Stack style
    Color cColor,
    Decoration cDecoration,
    Decoration cForegroundDecoration,
    MaterialHolder materialHolder,
    // Specific property of Stack
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    StackFit fit = StackFit.loose,
    TextDirection textDirection,
    Overflow overflow = Overflow.clip,
    // Stack children
    List<Widget> children,
  })  : assert(pIgnoreImplicitWidthHeight != null),
        assert(pEnableInkWell != null),
        assert(fit != null),
        assert(overflow != null),
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
            alignment: cAlignment,
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
            child: Stack(
              key: cKey,
              fit: fit,
              alignment: alignment,
              textDirection: textDirection,
              overflow: overflow,
              children: children ?? <Widget>[],
            ),
          ),
        );
}
