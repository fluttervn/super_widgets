import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_widgets/base/dynamic_size.dart';
import 'package:super_widgets/base/safe_decorated_box.dart';

import 'safe_widget.dart';

/// BaseContainer is an abstract widget which has almost properties such as
/// [alignment], [padding], [margin], color, [decoration],
/// [width], [height] and [dynamicSize].
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

  /// Width (double) of the container.
  final double width;

  /// Height (double) of the container.
  final double height;

  /// Dynamic size of this widget
  ///
  /// If is 'wrap', then this widget will be wrapped into a [Wrap] widget.
  /// If is 'full', then this widget will be wrapped into a [Expanded] widget
  final String dynamicSize;

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
    this.width,
    this.height,
    BoxConstraints constraints,
    this.dynamicSize,
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
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget current = child;

    current = safeAlign(alignment: alignment, child: current);

    final EdgeInsetsGeometry effectivePadding = _paddingIncludingDecoration;
    current = safePadding(padding: effectivePadding, child: current);

    current = SafeDecoratedBox(decoration: decoration, child: current);

    // Wrap into a DynamicSize
    current = DynamicSize(dynamicSize: dynamicSize, child: current);

    // Margin must be the last widget to wrapped
    current = safePadding(padding: margin, child: current);

    return current;
  }
}
