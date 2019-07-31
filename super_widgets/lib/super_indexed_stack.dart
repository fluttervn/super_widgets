import 'package:flutter/widgets.dart';

class SuperIndexedStack extends Container {
  /// [SuperIndexedStack] is a [Container] with [Stack] inside. Its params are all params of [Container]
  /// with [Stack] params:
  ///
  /// - childKey: Key of the [Stack]
  /// - children: List of Widgets of [Stack]
  /// - childAlignment: the [AlignmentGeometry] of [Stack], default is [AlignmentDirectional.topStart]
  /// - fit: the [StackFit] of [Stack], default is [StackFit.loose]
  /// - textDirection: the [TextDirection] of [Stack]
  /// - overflow: the [Overflow] of [Stack], default is [Overflow.clip]
  SuperIndexedStack({
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
    List<Widget> children,
    AlignmentGeometry childAlignment = AlignmentDirectional.topStart,
    StackFit sizing = StackFit.loose,
    TextDirection textDirection,
    int index = 0,
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
