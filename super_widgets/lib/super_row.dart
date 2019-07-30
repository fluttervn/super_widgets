import 'package:flutter/widgets.dart';

import 'super_container.dart';

class SuperRow extends SuperMultipleChildContainer {
  /// [mainAxisAlignment] of [Row], default is [MainAxisAlignment.start]
  final MainAxisAlignment mainAxisAlignment;

  /// [mainAxisSize] of [Row], default is [MainAxisSize.max]
  final MainAxisSize mainAxisSize;

  SuperRow({
    Key key,
    Color color,
    Decoration decoration,
    Alignment alignment,
    EdgeInsetsGeometry padding,
    EdgeInsetsGeometry margin,
    @required List<Widget> children,
    Alignment innerAlignment,
    double width,
    double height,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
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
      key: key,
      alignment: alignment,
      margin: margin,
      decoration: decoration,
      padding: padding,
      width: width,
      height: height,
      child: Row(
        mainAxisAlignment: mainAxisAlignment,
        mainAxisSize: mainAxisSize,
        children: children,
      ),
    );
  }
}
