import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

/// [SuperScrollViewContainer] is a [SingleChildScrollView] with [Container]
/// inside.
class SuperScrollViewContainer extends SingleChildScrollView {
  /// Create new [SuperScrollViewContainer] which has a [SingleChildScrollView]
  /// (parent) with a [Container] (child) inside.
  /// Thus its params is the combination of [SingleChildScrollView]'s
  /// params and [Container]'s  params.
  ///
  /// <b>Params of the parent widget is:</b>
  ///
  /// - `key` : key of parent widget.
  /// - `scrollDirection`: the axis along which the scroll view scrolls.
  /// Defaults to [Axis.vertical].
  /// - `reverse` : Whether the scroll view scrolls in the reading direction.
  /// Defaults to false.
  /// - `padding`: padding between the [SingleChildScrollView] vs. the
  /// [Container].
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
  /// - `childKey`: [Key] of [Container].
  /// - `child`: the widget inside [Container].
  /// - `alignment`: Align the [Container] within this widget. Defaults to
  /// [AlignmentDirectional.topStart].
  /// - `childPadding`: padding between the [Container] to the `child`
  /// - `color` and `decoration`: only one params is valid. It's the
  /// decoration to paint behind the [Container].
  /// - `foregroundDecoration`: the decoration to paint in front of the [Container].
  /// - `width` and `height` values include the padding. It can be a double
  /// value like 100.0, or [double.infinity], or null, like the size value of
  /// [Container]
  /// - `constraints`: like [BoxConstraints] of [Container].
  /// - `transform`: the transformation matrix to apply before painting the parent.
  SuperScrollViewContainer({
    Key key,
    Axis scrollDirection,
    bool reverse = false,
    EdgeInsetsGeometry padding,
    bool primary,
    ScrollPhysics physics,
    ScrollController controller,
    DragStartBehavior dragStartBehavior,
    Key childKey,
    AlignmentGeometry alignment,
    EdgeInsetsGeometry childPadding,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    Matrix4 transform,
    Widget child,
  }) : super(
          key: key,
          scrollDirection: scrollDirection ?? Axis.vertical,
          reverse: reverse,
          padding: padding,
          primary: primary,
          physics: physics,
          controller: controller,
          dragStartBehavior: dragStartBehavior ?? DragStartBehavior.start,
          child: Container(
            key: childKey,
            alignment: alignment ?? AlignmentDirectional.topStart,
            padding: childPadding,
            color: color,
            decoration: decoration,
            foregroundDecoration: foregroundDecoration,
            width: width,
            height: height,
            constraints: constraints,
            transform: transform,
            child: child,
          ),
        );
}
