import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

/// [SuperScrollViewRow] is a [SingleChildScrollView] with [Row]
/// inside, it means scrollDirection is [Axis.horizontal]
class SuperScrollViewRow extends SingleChildScrollView {
  /// Create new [SuperScrollViewRow].
  ///
  /// - Its parent is [SingleChildScrollView].
  /// - Its child is [Row].
  ///
  /// Its params is the combination of parent's params (has the same param
  /// name) and child's  params (has almost the same param name, but if have
  /// any duplicated name with its parent, then add prefix `child`).
  /// For example: if parent has `color` property, and child also  have `color`
  /// property, then the latter will be rename to `childColor`).
  ///
  /// The list below only show default params of [SingleChildScrollView] :
  ///
  /// - reverse: default is false
  /// - dragStartBehavior: default is [DragStartBehavior.start]
  ///
  /// The list below only show renamed or default params of [Row] :
  ///
  /// - [childKey] : [Key] of the [Row]
  /// - [children] : default is `<Widget>[]`
  /// - [mainAxisAlignment] : default is [MainAxisAlignment.start]
  /// - [mainAxisSize] : default is [MainAxisSize.max]
  /// - [crossAxisAlignment] : default is [CrossAxisAlignment.center]
  /// - [verticalDirection] : default is [VerticalDirection.down]
  SuperScrollViewRow({
    Key key,
    bool reverse = false,
    EdgeInsetsGeometry padding,
    bool primary,
    ScrollPhysics physics,
    ScrollController controller,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    Key childKey,
    List<Widget> children,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
  }) : super(
          key: key,
          scrollDirection: Axis.horizontal,
          reverse: reverse,
          padding: padding,
          primary: primary,
          physics: physics,
          controller: controller,
          dragStartBehavior: dragStartBehavior,
          child: Row(
            key: childKey,
            children: children ?? <Widget>[],
            mainAxisAlignment: mainAxisAlignment,
            mainAxisSize: mainAxisSize,
            crossAxisAlignment: crossAxisAlignment,
            verticalDirection: verticalDirection,
            textDirection: textDirection,
            textBaseline: textBaseline,
          ),
        );
}
