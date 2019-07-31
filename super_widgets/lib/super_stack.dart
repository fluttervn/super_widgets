import 'package:flutter/widgets.dart';

class SuperStack extends Container {
  /// [SuperStack] is a [Container] with [Stack] inside. Its params are all params of [Container]
  /// with [Stack] params:
  ///
  /// - childKey: Key of the [Stack]
  /// - children: List of Widgets of [Stack]
  /// - childAlignment: the [AlignmentGeometry] of [Stack], default is [AlignmentDirectional.topStart]
  /// - fit: the [StackFit] of [Stack], default is [StackFit.loose]
  /// - textDirection: the [TextDirection] of [Stack]
  /// overflow: the [Overflow] of [Stack], default is [Overflow.clip]
  SuperStack({
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
    @required List<Widget> children,
    AlignmentGeometry childAlignment = AlignmentDirectional.topStart,
    StackFit fit = StackFit.loose,
    TextDirection textDirection,
    Overflow overflow = Overflow.clip,
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
          child: Stack(
            children: children,
            fit: fit,
            alignment: childAlignment,
            key: childKey,
            textDirection: textDirection,
            overflow: overflow,
          ),
        );
}
