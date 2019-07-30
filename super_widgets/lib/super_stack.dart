import 'package:flutter/widgets.dart';

class SuperStack extends Container {
  SuperStack({
    Key key,
    Alignment alignment,
    EdgeInsetsGeometry padding,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    EdgeInsetsGeometry margin,
    Matrix4 transform,
    Key childKey,
    @required List<Widget> children,
    Alignment childAlignment = Alignment.topLeft,
    StackFit fit = StackFit.loose,
  }) : super(
          key: key,
          alignment: alignment,
          padding: padding,
          color: color,
          decoration: decoration,
          foregroundDecoration: foregroundDecoration,
          width: width,
          height: height,
          constraints: constraints,
          margin: margin,
          transform: transform,
          child: Stack(
            children: children,
            fit: fit,
            alignment: childAlignment,
            key: childKey,
          ),
        );
}
