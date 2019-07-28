import 'package:flutter/widgets.dart';

import 'super_container.dart';

class SuperStack extends SuperMultipleChildContainer {
  /// The constraints passed into the [Stack] from its parent are either
  /// loosened ([StackFit.loose]) or tightened to their biggest size
  /// ([StackFit.expand]).
  ///
  /// Default is [StackFit.loose]
  final StackFit fit;

  SuperStack({
    Color color,
    Decoration decoration,
    Alignment alignment,
    EdgeInsetsGeometry padding,
    EdgeInsetsGeometry margin,
    @required List<Widget> children,
    Key key,
    Alignment innerAlignment,
    double width,
    double height,
    this.fit = StackFit.loose,
  }) : super(
          key: key,
          margin: margin,
          padding: padding,
          alignment: alignment,
          innerAlignment: innerAlignment,
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
      child: Stack(
        key: key,
        children: children,
        alignment: innerAlignment,
        fit: fit,
      ),
    );
  }
}
