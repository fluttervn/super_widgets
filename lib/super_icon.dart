import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SuperIcon extends Container {
  /// [SuperIcon] is a [Container] with [Icon] inside. Its params is the combination
  /// of [Container]'s params (has the same param name) and [Icon]'s params (has almost the
  /// same param name, but if have any duplicated name with its parent, then add prefix `child` -
  /// for example: Container has `color` property, then if [Icon] also have `color`
  /// property, then the latter will be rename to `childColor`). The list below only documents
  /// for [Icon]
  ///
  /// - childKey: [Key] of the [Icon]
  /// - icon: the [IconData], which is from [Icons], can be null
  /// - size: The size ([double]) of the icon in logical pixels of the [Icon]
  /// - childColor: [Color] of the [Icon]
  /// - semanticLabel: semanticLabel ([String]) of the [Icon]
  /// - textDirection: [TextDirection], if this is null, the ambient [Directionality] is used instead.
  SuperIcon({
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
    IconData icon,
    double size,
    Color childColor,
    String semanticLabel,
    TextDirection textDirection,
  }) : super(
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
          child: Icon(
            icon,
            key: childKey,
            size: size,
            color: childColor,
            semanticLabel: semanticLabel,
            textDirection: textDirection,
          ),
        );
}
