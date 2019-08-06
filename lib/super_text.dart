import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// [SuperText] is a [Container] with [Text] inside
class SuperText extends Container {
  /// Create new [SuperText]. Its params is the combination of [Container]'s
  /// params (has the same param name) and [Text]'s  params (has almost the
  /// same param name, but if have any duplicated name with its parent,
  /// then add prefix `child` - for example: if [Container] has `color`
  /// property, and [Text] also  have `color` property, then the latter will
  /// be rename to `childColor`).
  ///
  /// The list below only show default params of [Container]:
  ///
  /// - alignment: default is [AlignmentDirectional.topStart]
  ///
  /// The list below only show renamed or default params of [Text]:
  ///
  /// - [childKey] : [Key] of the [Text]
  /// - [textData] & [textSpan] : Only allow one
  SuperText({
    Key key,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
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
