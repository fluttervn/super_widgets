import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

/// [SuperScrollViewRow] is a [SingleChildScrollView] with [Row]
/// inside, it means scrollDirection is [Axis.horizontal]
class SuperScrollViewRow extends SingleChildScrollView {
  /// Create new [SuperScrollViewContainer] which has a [SingleChildScrollView]
  /// (parent) with a [Row] (child) inside.
  /// Thus its params is the combination of [SingleChildScrollView]'s
  /// params and [Row]'s  params.
  ///
  /// <b>Params of the parent widget is:</b>
  ///
  /// - `key` : Key of parent widget
  /// - `scrollDirection`: The axis along which the scroll view scrolls.
  /// Defaults to [Axis.vertical].
  /// - `reverse` : Whether the scroll view scrolls in the reading direction.
  /// Defaults to false.
  /// - `padding`: padding between the [SingleChildScrollView] vs. the
  /// [Row].
  /// - `primary`: Whether this is the primary scroll view associated with the
  /// parent [PrimaryScrollController].
  /// - `physics`: How the scroll view should respond to user input. For
  /// example, determines how the scroll view continues to animate after the
  /// user stops dragging the scroll view. Defaults to matching platform
  /// conventions.
  /// - `controller`: An object that can be used to control the position to
  /// which this scroll view is scrolled.
  /// - `dragStartBehavior`: {@macro flutter.widgets.scrollable.dragStartBehavior}.
  /// Defaults to [DragStartBehavior.start].
  ///
  /// <b>Params of the child widget is:</b>
  ///
  /// - `childKey`: [Key] of [Row].
  /// - `children`: list of children widget of [Row].
  /// - `mainAxisAlignment`: How the children should be placed along the main
  /// axis. Defaults to [MainAxisAlignment.start].
  /// - `mainAxisSize`: How much space should be occupied in the main axis.
  /// Defaults to [MainAxisSize.max].
  /// - `crossAxisAlignment`: How the children should be placed along the cross
  /// axis. Defaults to [CrossAxisAlignment.center].
  /// - `verticalDirection`: Determines the order to lay children out
  /// vertically and how to interpret `start` and `end` in the vertical
  /// direction. Defaults to [VerticalDirection.down].
  /// - `textDirection`: Determines the order to lay children out horizontally
  /// and how to interpret `start` and `end` in the horizontal direction.
  /// Defaults to the ambient [Directionality].
  /// - `textBaseline`: If aligning items according to their baseline, which
  /// baseline to use.
  SuperScrollViewRow({
    Key key,
    bool reverse = false,
    EdgeInsetsGeometry padding,
    bool primary,
    ScrollPhysics physics,
    ScrollController controller,
    DragStartBehavior dragStartBehavior,
    Key childKey,
    List<Widget> children,
    MainAxisAlignment mainAxisAlignment,
    MainAxisSize mainAxisSize,
    CrossAxisAlignment crossAxisAlignment,
    TextDirection textDirection,
    VerticalDirection verticalDirection,
    TextBaseline textBaseline,
  }) : super(
          key: key,
          scrollDirection: Axis.horizontal,
          reverse: reverse,
          padding: padding,
          primary: primary,
          physics: physics,
          controller: controller,
          dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
          child: Row(
            key: childKey,
            children: children ?? <Widget>[],
            mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
            mainAxisSize: mainAxisSize ?? MainAxisSize.max,
            crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.center,
            verticalDirection: verticalDirection ?? VerticalDirection.down,
            textDirection: textDirection,
            textBaseline: textBaseline,
          ),
        );
}
