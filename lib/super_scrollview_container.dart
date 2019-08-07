import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

/// [SuperScrollViewContainer] is a [SingleChildScrollView] with [Container]
/// inside.
class SuperScrollViewContainer extends SingleChildScrollView {
  /// Create new [SuperScrollViewContainer].
  ///
  /// - Its parent is [SingleChildScrollView].
  /// - Its child is [Container].
  ///
  /// Its params is the combination of parent's params (has the same param
  /// name) and child's  params (has almost the same param name, but if have
  /// any duplicated name with its parent, then add prefix `child`).
  /// For example: if parent has `color` property, and child also  have `color`
  /// property, then the latter will be rename to `childColor`).
  ///
  /// The list below only show default params of [SingleChildScrollView] :
  ///
  /// - scrollDirection: default is [Axis.vertical]
  /// - reverse: default is false
  /// - dragStartBehavior: default is [DragStartBehavior.start]
  ///
  /// The list below only show renamed or default params of [Container] :
  ///
  /// - [childKey] : [Key] of the [Stack]
  /// - [alignment] : default is [AlignmentDirectional.topStart]
  SuperScrollViewContainer({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    EdgeInsetsGeometry padding,
    bool primary,
    ScrollPhysics physics,
    ScrollController controller,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    Key childKey,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    EdgeInsetsGeometry childPadding,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    EdgeInsetsGeometry margin,
    Matrix4 transform,
    Widget child,
  }) : super(
          key: key,
          scrollDirection: scrollDirection,
          reverse: reverse,
          padding: padding,
          primary: primary,
          physics: physics,
          controller: controller,
          dragStartBehavior: dragStartBehavior,
          child: Container(
            key: childKey,
            alignment: alignment,
            padding: childPadding,
            color: color,
            decoration: decoration,
            foregroundDecoration: foregroundDecoration,
            width: width,
            height: height,
            constraints: constraints,
            margin: margin,
            transform: transform,
            child: child,
          ),
        );
}
