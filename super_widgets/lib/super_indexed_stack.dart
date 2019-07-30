import 'package:flutter/widgets.dart';

import 'super_container.dart';

class SuperIndexedStack extends SuperMultipleChildContainer {
  /// The constraints passed into the [Stack] from its parent are either
  /// loosened ([StackFit.loose]) or tightened to their biggest size
  /// ([StackFit.expand]).
  ///
  /// Default is [StackFit.loose]
  final StackFit sizing;

  /// Align the [children] of within the Stack, default is [Alignment.topLeft].
  final AlignmentGeometry innerAlignment;

  /// The index of the child to show.
  final int index;

  SuperIndexedStack({
    Color color,
    Decoration decoration,
    Alignment alignment,
    EdgeInsetsGeometry padding,
    EdgeInsetsGeometry margin,
    @required List<Widget> children,
    Key key,
    double width,
    double height,
    this.innerAlignment = Alignment.topLeft,
    this.index = 0,
    this.sizing = StackFit.loose,
  }) : super(
          key: key,
          margin: margin,
          padding: padding,
          alignment: alignment,
          color: color,
          decoration: decoration,
          width: width,
          height: height,
          children: children,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      margin: margin,
      decoration: decoration,
      padding: padding,
      width: width,
      height: height,
      child: IndexedStack(
        key: key,
        index: index,
        children: children,
        alignment: innerAlignment,
        sizing: sizing,
      ),
    );
  }
}
