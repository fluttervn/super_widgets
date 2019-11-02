import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

/// [SuperScrollViewColumn] is a [SingleChildScrollView] with [Column]
/// inside, it means scrollDirection is [Axis.vertical]
class SuperScrollViewColumn extends SingleChildScrollView {
  /// Create new [SuperScrollViewContainer] which has a [SingleChildScrollView]
  /// (parent) with a [Column] (child) inside.
  /// Thus its params is the combination of [SingleChildScrollView]'s
  /// params and [Column]'s  params.
  ///
  /// <b>Params of the parent widget is:</b>
  ///
  /// - `key` : key of parent widget.
  /// - `scrollDirection`: the axis along which the scroll view scrolls.
  /// Defaults to [Axis.vertical].
  /// - `reverse` : Whether the scroll view scrolls in the reading direction.
  /// Defaults to false.
  /// - `padding`: padding between the [SingleChildScrollView] vs. the
  /// [Column].
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
  /// - `childKey`: [Key] of [Column].
  /// - `children`: list of children widget of [Column].
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
  /// - `textBaseline`: if aligning items according to their baseline, which
  /// baseline to use.
  SuperScrollViewColumn({
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
          scrollDirection: Axis.vertical,
          reverse: reverse,
          padding: padding,
          primary: primary,
          physics: physics,
          controller: controller,
          dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
          child: Column(
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
