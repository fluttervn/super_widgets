import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SuperText extends Container {
  /// [SuperText] is a [Container] with [Text] inside. Its params is the combination
  /// of [Container]'s params (has the same param name) and [Text]'s params (has almost the
  /// same param name, but if have any duplicated name with its parent, then add prefix `child` -
  /// for example: Container has `color` property, then if [Text] also have `color`
  /// property, then the latter will be rename to `childColor`). The list below only documents
  /// for [Text]
  ///
  /// - childKey: [Key] of the [Text]
  /// - textData: [String]: The text to display. This will be null if a [textSpan] is provided instead.
  /// - textSpan: The text to display as a [TextSpan]. This will be null if [data] is provided instead.
  /// - style: The [TextStyle] to use for this text.
  /// - strutStyle: {@macro flutter.painting.textPainter.strutStyle}
  /// - textAlign: [TextAlign]: How the text should be aligned horizontally.
  /// - textDirection: [TextDirection]: The directionality of the text.
  /// - locale: Used to select a font when the same Unicode character can be rendered differently, depending on the [Locale].
  /// - softWrap: Whether the text should break at soft line breaks.
  /// - overflow: [TextOverflow]: How visual overflow should be handled.
  /// - textScaleFactor: [double]: The number of font pixels for each logical pixel.
  /// - maxLines: [int]: An optional maximum number of lines for the text to span, wrapping if necessary
  /// - semanticsLabel: [String]: An alternative semantics label for this text.
  SuperText({
    Key key,
    AlignmentGeometry alignment,
    EdgeInsetsGeometry padding,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    EdgeInsetsGeometry margin,
    Matrix4 transform,
    Key childKey,
    String textData,
    TextSpan textSpan,
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
  })  : assert(
          textData != null || textSpan != null,
          'Text widget must have non-empty textData and non-null textSpan',
        ),
        assert(
          textData == null || textSpan == null,
          'Text widget cannot have both textData and textSpan',
        ),
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
            margin: margin,
            transform: transform,
            child: textSpan == null
                ? Text(
                    textData,
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
                  )
                : Text.rich(
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
