import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../base/super_widgets_base_index.dart';

/// [SuperIcon] is a [Container] with [Icon] inside.
class SuperIcon extends BaseContainer {
  /// Create new [SuperIcon] which has a [Container] (parent) with
  /// a [Icon] (child) inside.
  /// Thus its params is the combination of [Container]'s
  /// params and [Icon]'s  params.
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
  /// - `childKey`: [Key] of [Icon].
  /// - `icon`: the icon to display. The available icons are described in [Icons].
  /// - `size`: Since [Icon] is squared, we must specify the size of the icon
  /// in logical pixels.
  /// - `childColor`: the color to use when drawing the icon. Defaults to the
  /// current [IconTheme] color, if any.
  /// - `semanticLabel`: semantic label for the icon.
  /// - `textDirection`: the text direction to use for rendering the icon. If
  /// this is null, the ambient [Directionality] is used instead.
  SuperIcon(
    IconData icon, {
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
    // Text key
    Key cKey,
    // Text position & size
    AlignmentGeometry cAlignment,
    EdgeInsetsGeometry cMargin,
    double cMarginAllPx,
    EdgeInsetsGeometry cPadding,
    double cPaddingAllPx,
    int cFlex,
    // Text style
    Color cColor,
    Decoration cDecoration,
    Decoration cForegroundDecoration,
    MaterialHolder materialHolder,
    // Specific property of Text
    double size,
    Color color,
    String semanticLabel,
    TextDirection textDirection,
  })  : assert(pIgnoreImplicitWidthHeight != null),
        assert(pEnableInkWell != null),
        assert(icon != null),
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
            child: Icon(
              icon,
              key: cKey,
              size: size,
              color: color,
              semanticLabel: semanticLabel,
              textDirection: textDirection,
            ),
          ),
        );
}
