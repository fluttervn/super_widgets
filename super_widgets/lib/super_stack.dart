import 'package:flutter/widgets.dart';

class SuperStack extends StatelessWidget {
  /// Align the [Stack] within the container.
  final AlignmentGeometry alignment;

  /// Empty space to surround the [decoration] and [Stack].
  final EdgeInsetsGeometry margin;

  /// Empty space to inscribe inside the [decoration]. The [Stack], if any, is
  /// placed inside this padding.
  final EdgeInsetsGeometry padding;

  /// The decoration to paint behind the [Stack].
  ///
  /// A shorthand for specifying just a solid color is available in the
  /// constructor: set the `color` argument instead of the `decoration`
  /// argument.
  final Decoration decoration;

  /// Key of the Stack.
  final Key key;
  final List<Widget> children;

  /// Align the [children] of within the Stack.
  final AlignmentGeometry innerAlignment;

  /// The constraints passed into the [Stack] from its parent are either
  /// loosened ([StackFit.loose]) or tightened to their biggest size
  /// ([StackFit.expand]).
  ///
  /// Default is [StackFit.loose]
  final StackFit fit;

  SuperStack({
    Color color,
    Decoration decoration,
    this.alignment,
    this.padding,
    this.margin,
    this.children,
    this.key,
    this.innerAlignment,
    this.fit = StackFit.loose,
  }) : decoration =
            decoration ?? (color != null ? BoxDecoration(color: color) : null);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      margin: margin,
      decoration: decoration,
      padding: padding,
      child: Stack(
        key: key,
        children: children,
        alignment: innerAlignment,
        fit: fit,
      ),
    );
  }
}
