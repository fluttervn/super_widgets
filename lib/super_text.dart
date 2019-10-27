import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// [SuperText] is a [Container] with [Text] inside
class SuperText extends BaseContainer {
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
  /// - [textData]: text (String)
  SuperText(
    String textData, {
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
    String dynamicSize,
    bool ignoreImplicitWidthHeight = true,
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
  })  : assert(textData != null, 'Text widget must have non-empty textData'),
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
            dynamicSize: dynamicSize,
            ignoreImplicitWidthHeight: ignoreImplicitWidthHeight,
            onPressed: onPressed,
            onLongPressed: onLongPressed,
            margin: margin,
            transform: transform,
            child: Text(
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
            ));

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
    String dynamicSize,
    bool ignoreImplicitWidthHeight = false,
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
            dynamicSize: dynamicSize,
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
