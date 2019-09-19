import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/base/safe_decorated_box.dart';

import 'safe_align.dart';
import 'safe_expanded.dart';
import 'safe_padding.dart';

/// BaseContainer is an abstract widget which has almost properties such as
/// [alignment], [padding], [margin], color, [decoration],
/// [width], [height] and [expandFlex].
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

  /// Empty space to surround the [decoration] and [child].
  final EdgeInsetsGeometry margin;

  /// Width (string) of the container. Its default value is `wrap`:
  /// - wrap: is [Wrap] widget
  /// - full: is [Expanded] widget
  /// - any integer (100, 250...): is exact width of this widget
  final String width;

  /// Height (string) of the container. Its default value is `wrap`:
  /// - wrap: is [Wrap] widget
  /// - full: is [Expanded] widget
  /// - any integer (100, 250...): is exact height of this widget
  final String height;

  /// The flex factor to use for this child
  ///
  /// If null or zero, the child is inflexible and determines its own size. If
  /// non-zero, the amount of space the child's can occupy in the main axis is
  /// determined by dividing the free space (after placing the inflexible
  /// children) according to the flex factors of the flexible children.
  final int expandFlex;

  /// The [child] contained by the container.
  final Widget child;

  EdgeInsetsGeometry get _paddingIncludingDecoration {
    if (decoration == null || decoration.padding == null) return padding;
    final EdgeInsetsGeometry decorationPadding = decoration.padding;
    if (padding == null) return decorationPadding;
    return padding.add(decorationPadding);
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
    this.width,
    this.height,
    BoxConstraints constraints,
    this.expandFlex = 0,
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
        decoration =
            decoration ?? (color != null ? BoxDecoration(color: color) : null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget current = child;

    current = SafeAlign(alignment: alignment, child: current);

    final EdgeInsetsGeometry effectivePadding = _paddingIncludingDecoration;
    current = SafePadding(padding: effectivePadding, child: current);

    current = SafeDecoratedBox(decoration: decoration, child: current);

    // parse width and height, then set its size
    if (width == 'full') {}

    current = SafePadding(padding: margin, child: current);

    current = SafeExpanded(child: current, flex: expandFlex);

    return current;
  }
}
