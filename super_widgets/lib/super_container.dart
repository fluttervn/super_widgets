import 'package:flutter/widgets.dart';

abstract class SuperBaseContainer extends StatelessWidget {
  /// Key of the inner widget inside Container.
  final Key key;

  /// Align the this widget within the container.
  final AlignmentGeometry alignment;

  /// Empty space to surround the [decoration] and this widget.
  final EdgeInsetsGeometry margin;

  /// Empty space to inscribe inside the [decoration]. The inner widget is
  /// placed inside this padding.
  final EdgeInsetsGeometry padding;

  /// The decoration to paint behind the inner widget.
  ///
  /// A shorthand for specifying just a solid color is available in the
  /// constructor: set the `color` argument instead of the `decoration`
  /// argument.
  final Decoration decoration;

  /// Align the [children] of within the Stack.
  final AlignmentGeometry innerAlignment;

  /// Width of container, by default is double.infinity
  final double width;

  /// Height of container, by default is double.infinity
  final double height;

  SuperBaseContainer({
    Color color,
    Decoration decoration,
    this.alignment = Alignment.topLeft,
    this.padding,
    this.margin,
    this.key,
    this.innerAlignment = Alignment.topLeft,
    this.width = double.infinity,
    this.height = double.infinity,
  }) : decoration = decoration ?? (color != null ? BoxDecoration(color: color) : null);
}

abstract class SuperSingleChildContainer extends SuperBaseContainer {
  /// The inner widget inside
  final Widget child;

  SuperSingleChildContainer({
    Color color,
    Decoration decoration,
    AlignmentGeometry alignment,
    EdgeInsetsGeometry padding,
    EdgeInsetsGeometry margin,
    Key key,
    AlignmentGeometry innerAlignment,
    double width,
    double height,
    @required this.child,
  }) : super(
          key: key,
          margin: margin,
          padding: padding,
          color: color,
          decoration: decoration,
          width: width ?? double.infinity,
          height: height ?? double.infinity,
          alignment: alignment ?? Alignment.topLeft,
          innerAlignment: innerAlignment ?? Alignment.topLeft,
        );
}

abstract class SuperMultipleChildContainer extends SuperBaseContainer {
  // The list of inner widgets inside
  final List<Widget> children;

  SuperMultipleChildContainer({
    Color color,
    Decoration decoration,
    AlignmentGeometry alignment,
    EdgeInsetsGeometry padding,
    EdgeInsetsGeometry margin,
    Key key,
    AlignmentGeometry innerAlignment,
    double width,
    double height,
    @required this.children,
  }) : super(
          key: key,
          margin: margin,
          padding: padding,
          color: color,
          decoration: decoration,
          width: width ?? double.infinity,
          height: height ?? double.infinity,
          alignment: alignment ?? Alignment.topLeft,
          innerAlignment: innerAlignment ?? Alignment.topLeft,
        );
}
