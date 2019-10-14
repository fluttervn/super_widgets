import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'safe_widget.dart';

/// BaseContainer is an abstract widget which has almost properties such as
/// [alignment], [padding], [margin], color, [decoration],
/// width, height and [dynamicSize].
///
/// Note: this widget doesn't support BoxConstraints
class BaseContainer extends StatelessWidget {
  /// Align the [child] within the container.
  final AlignmentGeometry alignment;

  /// Empty space to inscribe inside the [decoration]. The [child], if any, is
  /// placed inside this padding.
  final EdgeInsetsGeometry padding;

  /// The decoration to paint behind the [child].
  ///
  /// A shorthand for specifying just a solid color is available in the
  /// constructor: set the `color` argument instead of the `decoration`
  /// argument.
  final Decoration decoration;

  /// The decoration to paint in front of the [child].
  final Decoration foregroundDecoration;

  /// Empty space to surround the [decoration] and [child].
  final EdgeInsetsGeometry margin;

  /// Dynamic size of this widget
  ///
  /// If is 'wrap', then this widget will be wrapped into a [Wrap] widget.
  /// If is 'full', then this widget will be wrapped into a [Expanded] widget
  final String dynamicSize;

  /// Additional constraints to apply to the child.
  ///
  /// The constructor `width` and `height` arguments are combined with the
  /// `constraints` argument to set this property.
  ///
  /// The [padding] goes inside the constraints.
  final BoxConstraints constraints;

  /// The transformation matrix to apply before painting the container.
  final Matrix4 transform;

  /// If width or height or constraints contains an infinity value, you can
  /// use this flags to ignore all width, height, [alignment] or [constraints].
  /// If yes, then only [margin] or [padding] takes effect in term of size.
  final bool ignoreSizeInfinityConstraints;

  /// The [child] contained by the container.
  final Widget child;

  EdgeInsetsGeometry get _paddingIncludingDecoration {
    if (decoration == null || decoration.padding == null) return padding;
    final EdgeInsetsGeometry decorationPadding = decoration.padding;
    if (padding == null) return decorationPadding;
    return padding.add(decorationPadding);
  }

  static Decoration _decorationFromColor(Color color) {
    if (color == null) return null;
    return BoxDecoration(color: color);
  }

  /// Creates a widget that mimics [Container] with combination of common
  /// painting, positioning, and sizing widgets.
  BaseContainer({
    Key key,
    this.alignment,
    this.padding,
    this.margin,
    Color color,
    Decoration decoration,
    this.foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    this.dynamicSize,
    this.ignoreSizeInfinityConstraints = false,
    this.transform,
    this.child,
  })  : assert(margin == null || margin.isNonNegative),
        assert(padding == null || padding.isNonNegative),
        assert(decoration == null || decoration.debugAssertIsValid()),
        assert(constraints == null || constraints.debugAssertIsValid()),
        assert(
            color == null || decoration == null,
            'Cannot provide both a color and a decoration\n'
            'The color argument is just a shorthand for '
            '"decoration: new BoxDecoration(color: color)".'),
        decoration = decoration ?? _decorationFromColor(color),
        constraints = (width != null || height != null)
            ? constraints?.tighten(width: width, height: height) ??
                BoxConstraints.tightFor(width: width, height: height)
            : constraints,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget current = child;

    if (!ignoreSizeInfinityConstraints) {
      // When ignore Infinity Size & Constraints, also ignore Align
      current = safeAlign(alignment: alignment, child: current);
    }

    final EdgeInsetsGeometry effectivePadding = _paddingIncludingDecoration;
    current = safePadding(padding: effectivePadding, child: current);

    current = safeDecoratedBox(decoration: decoration, child: current);

    current = safeDecoratedBox(
      decoration: foregroundDecoration,
      position: DecorationPosition.foreground,
      child: current,
    );

    if (!ignoreSizeInfinityConstraints) {
      // Wrap into ConstrainedBox for size of widget
      current = safeConstrainedBox(constraints: constraints, child: current);
    }

    // Margin must be the last widget to wrapped
    current = safePadding(padding: margin, child: current);

    // Then, wrap into a DynamicSize for [Expanded] or [Wrap]
    current = safeDynamicSize(dynamicSize: dynamicSize, child: current);

    // Finally, wrap into a [Transform]
    current = safeTransform(transform: transform, child: current);

    return current;
  }
}
