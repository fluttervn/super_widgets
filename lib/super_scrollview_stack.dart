import 'package:flutter/gestures.dart';
import 'package:flutter/widgets.dart';

/// [SuperScrollViewStack] is a [SingleChildScrollView] with [Stack]
/// inside.
class SuperScrollViewStack extends SingleChildScrollView {
  /// Create new [SuperScrollViewContainer] which has a [SingleChildScrollView]
  /// (parent) with a [Stack] (child) inside.
  /// Thus its params is the combination of [SingleChildScrollView]'s
  /// params and [Stack]'s  params.
  ///
  /// <b>Params of the parent widget is:</b>
  ///
  /// - `key` : key of parent widget.
  /// - `scrollDirection`: the axis along which the scroll view scrolls.
  /// Defaults to [Axis.vertical].
  /// - `reverse` : Whether the scroll view scrolls in the reading direction.
  /// Defaults to false.
  /// - `padding`: padding between the [SingleChildScrollView] vs. the
  /// [Stack].
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
  /// - `childKey`: [Key] of [Stack].
  /// - `children`: list of children widget of [Stack].
  /// - `fit`: How to size the non-positioned children in the stack. Default is [StackFit.loose].
  /// - `overflow`: Whether overflowing children should be clipped. Default is [Overflow.clip].
  /// - `childAlignment`: How to align the non-positioned and
  /// partially-positioned children in the stack. Default is
  /// [AlignmentDirectional.topStart].
  /// - `textDirection`: the text direction with which to resolve [alignment].
  /// Defaults to the ambient [Directionality].
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
  })  : assert(reverse != null),
        assert(scrollDirection != null),
        assert(dragStartBehavior != null),
        assert(childAlignment != null),
        assert(fit != null),
        assert(overflow != null),
        super(
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
