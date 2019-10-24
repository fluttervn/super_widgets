import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// [SuperStack] is a [Container] with [Stack] inside.
class SuperStack extends BaseContainer {
  /// Create new [SuperStack]. Its params is the combination of [Container]'s
  /// params (has the same param name) and [Stack]'s  params (has almost the
  /// same param name, but if have any duplicated name with its parent,
  /// then add prefix `child` - for example: if [Container] has `color`
  /// property, and [Stack] also  have `color` property, then the latter will
  /// be rename to `childColor`).
  ///
  /// The list below only show default params of [Container] :
  ///
  /// - alignment: default is [AlignmentDirectional.topStart]
  ///
  /// The list below only show renamed or default params of [Stack] :
  ///
  /// - [childKey] : [Key] of the [Stack]
  /// - [childAlignment] : default is [AlignmentDirectional.topStart]
  /// - [fit] : default is [StackFit.loose]
  /// - [overflow] : default is [Overflow.clip]
  /// - [children] : default is `<Widget>[]`
  SuperStack({
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
    bool ignoreSizeInfinityConstraints = false,
    Matrix4 transform,
    Key childKey,
    List<Widget> children,
    AlignmentGeometry childAlignment = AlignmentDirectional.topStart,
    StackFit fit = StackFit.loose,
    TextDirection textDirection,
    Overflow overflow = Overflow.clip,
  }) : super(
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
          ignoreSizeInfinityConstraints: ignoreSizeInfinityConstraints,
          transform: transform,
          child: Stack(
            children: children ?? <Widget>[],
            fit: fit,
            alignment: childAlignment,
            key: childKey,
            textDirection: textDirection,
            overflow: overflow,
          ),
        );
}
