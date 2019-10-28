import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

/// [SuperScrollViewStack] is a [SingleChildScrollView] with [Stack]
/// inside.
class SuperScrollViewStack extends SingleChildScrollView {
  /// Create new [SuperScrollViewStack].
  ///
  /// - Its parent is [SingleChildScrollView].
  /// - Its child is [Stack].
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
  /// The list below only show renamed or default params of [Stack] :
  ///
  /// - [childKey] : [Key] of the [Stack]
  /// - [alignment] : default is [AlignmentDirectional.topStart]
  SuperScrollViewStack({
    Key key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    EdgeInsetsGeometry padding,
    bool primary,
    ScrollPhysics physics,
    ScrollController controller,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    Key childKey,
    List<Widget> children,
    AlignmentGeometry childAlignment = AlignmentDirectional.topStart,
    StackFit fit = StackFit.loose,
    TextDirection textDirection,
    Overflow overflow = Overflow.clip,
  }) : super(
          key: key,
          scrollDirection: scrollDirection,
          reverse: reverse,
          padding: padding,
          primary: primary,
          physics: physics,
          controller: controller,
          dragStartBehavior: dragStartBehavior,
          child: Stack(
            key: childKey,
            children: children ?? <Widget>[],
            fit: fit,
            alignment: childAlignment,
            textDirection: textDirection,
            overflow: overflow,
          ),
        );
}
