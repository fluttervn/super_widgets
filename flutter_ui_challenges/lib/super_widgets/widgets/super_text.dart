import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../base/super_widgets_base_index.dart';

/// [SuperText] is a [Container] with [Text] inside.
class SuperText extends BaseContainer {
  /// Create new [SuperText] which has a [Container] (parent) with
  /// a [Text] (child) inside.
  /// Thus its params is the combination of [Container]'s
  /// params and [Text]'s  params.
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
  /// - `childKey`: [Key] of [Text].
  /// - `textData`:  The text to display.
  /// - `style`: if non-null, the style to use for this text.
  /// - `strutStyle`: {@macro flutter.painting.textPainter.strutStyle}
  /// - `textAlign`: How the text should be aligned horizontally.
  /// - `textDirection`: the directionality of the text. This decides how
  /// [textAlign] values like [TextAlign.start] and [TextAlign.end] are
  /// interpreted.
  /// - `locale`: Used to select a font when the same Unicode character can
  /// be rendered differently, depending on the locale.
  /// - `softWrap`: Whether the text should break at soft line breaks.
  /// - `overflow`: How visual overflow should be handled.
  /// - `textScaleFactor`: the number of font pixels for each logical pixel.
  /// - `maxLines`: An optional maximum number of lines for the text to span,
  /// wrapping if necessary. If the text exceeds the given number of lines, it
  /// will be truncated according to [overflow].
  /// - `semanticsLabel`: An alternative semantics label for this text.
  SuperText(
    String textData, {
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
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    TextOverflow overflow,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
  })  : assert(textData != null, 'Text widget must have non-empty textData'),
        assert(pIgnoreImplicitWidthHeight != null),
        assert(pEnableInkWell != null),
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
            child: Text(
              textData,
              key: cKey,
              style: style,
              strutStyle: strutStyle,
              textAlign: textAlign,
              textDirection: textDirection,
              locale: locale,
              softWrap: softWrap,
              overflow: overflow,
              textScaleFactor: textScaleFactor,
              maxLines: maxLines,
              semanticsLabel: semanticsLabel,
            ),
          ),
        );

  /// Create new [SuperText] which has a [Container] (parent) with
  /// a [Text] (child) inside.
  /// Thus its params is the combination of [Container]'s
  /// params and [Text]'s  params.
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
  /// - `childKey`: [Key] of [Text].
  /// - `textSpan`:  The text to display as a [InlineSpan].
  /// - `style`: if non-null, the style to use for this text.
  /// - `strutStyle`: {@macro flutter.painting.textPainter.strutStyle}
  /// - `textAlign`: How the text should be aligned horizontally.
  /// - `textDirection`: the directionality of the text. This decides how
  /// [textAlign] values like [TextAlign.start] and [TextAlign.end] are
  /// interpreted.
  /// - `locale`: Used to select a font when the same Unicode character can
  /// be rendered differently, depending on the locale.
  /// - `softWrap`: Whether the text should break at soft line breaks.
  /// - `overflow`: How visual overflow should be handled.
  /// - `textScaleFactor`: the number of font pixels for each logical pixel.
  /// - `maxLines`: An optional maximum number of lines for the text to span,
  /// wrapping if necessary. If the text exceeds the given number of lines, it
  /// will be truncated according to [overflow].
  /// - `semanticsLabel`: An alternative semantics label for this text.
  SuperText.rich(
    TextSpan textSpan, {
    Key key,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
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
    bool enableInkWell = false,
    // ignore: avoid_unused_constructor_parameters
    Color splashColor,
    VoidCallback onPressed,
    VoidCallback onLongPressed,
    Matrix4 transform,
    Key childKey,
    TextStyle style,
    StrutStyle strutStyle,
    TextAlign textAlign,
    TextDirection textDirection,
    Locale locale,
    bool softWrap,
    TextOverflow overflow,
    double textScaleFactor,
    int maxLines,
    String semanticsLabel,
  })  : assert(textSpan != null, 'Text widget must have non-null textSpan'),
        assert(enableInkWell != null),
        assert(ignoreImplicitWidthHeight != null),
        assert(alignment != null),
        super(
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
            child: Text.rich(
              textSpan,
              key: childKey,
              style: style,
              strutStyle: strutStyle,
              textAlign: textAlign,
              textDirection: textDirection,
              locale: locale,
              softWrap: softWrap,
              overflow: overflow,
              textScaleFactor: textScaleFactor,
              maxLines: maxLines,
              semanticsLabel: semanticsLabel,
            ));
}
