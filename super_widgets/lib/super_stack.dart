import 'package:flutter/widgets.dart';

import 'super_container.dart';

class SuperStack extends SuperMultipleChildContainer {
  /// The constraints passed into the [Stack] from its parent are either
  /// loosened ([StackFit.loose]) or tightened to their biggest size
  /// ([StackFit.expand]).
  ///
  /// Default is [StackFit.loose]
  final StackFit fit;

  /// Align the [children] of within the Stack, default is [Alignment.topLeft].
  final AlignmentGeometry innerAlignment;

  SuperStack({
    Color color,
    Decoration decoration,
    BoxConstraints constraints,
    Alignment alignment,
    EdgeInsetsGeometry padding,
    EdgeInsetsGeometry margin,
    @required List<Widget> children,
    Key key,
    double width,
    double height,
    this.innerAlignment = Alignment.topLeft,
    this.fit = StackFit.loose,
  }) : super(
          key: key,
          margin: margin,
          padding: padding,
          alignment: alignment,
          color: color,
          decoration: decoration,
          constraints: constraints,
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
      constraints: constraints,
      padding: padding,
      width: width,
      height: height,
      child: Stack(
        key: key,
        children: children,
        alignment: innerAlignment,
        fit: fit,
      ),
    );
  }
}
