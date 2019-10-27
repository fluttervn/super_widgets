import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// [SuperIndexedStack] is a [Container] with [IndexedStack] inside
class SuperIndexedStack extends BaseContainer {
  /// Create new [SuperIndexedStack]. Its params is the combination of
  /// [Container]'s params (has the same param name) and [IndexedStack]'s
  /// params (has almost the same param name, but if have any duplicated name
  /// with its parent, then add prefix `child` - for example: if [Container]
  /// has `color` property, and [IndexedStack] also  have `color` property,
  /// then the latter will be rename to `childColor`).
  ///
  /// The list below only show default params of [Container] :
  ///
  /// - [alignment] : default is [AlignmentDirectional.topStart]
  ///
  /// The list below only show renamed or default params of [IndexedStack] :
  ///
  /// - [childKey] : [Key] of the [IndexedStack]
  /// - [childAlignment] : default is [AlignmentDirectional.topStart]
  /// - [sizing] : default is [StackFit.loose]
  /// - [index] : default is 0
  /// - [children] : default is `<Widget>[]`
  SuperIndexedStack({
    Key key,
    AlignmentGeometry alignment,
    EdgeInsetsGeometry padding,
    EdgeInsetsGeometry margin,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    String dynamicSize,
    bool ignoreImplicitWidthHeight,
    Matrix4 transform,
    Key childKey,
    List<Widget> children,
    AlignmentGeometry childAlignment = AlignmentDirectional.topStart,
    StackFit sizing = StackFit.loose,
    TextDirection textDirection,
    int index = 0,
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
          ignoreImplicitWidthHeight: ignoreImplicitWidthHeight,
          transform: transform,
          child: IndexedStack(
            children: children ?? <Widget>[],
            sizing: sizing,
            alignment: childAlignment,
            key: childKey,
            textDirection: textDirection,
            index: index,
          ),
        );
}
