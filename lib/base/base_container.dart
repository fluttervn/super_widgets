import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'safe_widget.dart';

/// BaseContainer is an abstract widget which has almost properties such as
/// [alignment], [padding], [margin], `color`, [decoration], `width`, `height`,
/// [flex], [onPressed] and [onLongPressed].
///
class BaseContainer extends StatelessWidget {
  /// Align the [child] within the container.
  final AlignmentGeometry alignment;

  /// Empty space to inscribe inside the [decoration]. The [child], if any, is
  /// placed inside this padding.
  final EdgeInsetsGeometry padding;

  /// The decoration to paint behind the `child`.
  ///
  /// A shorthand for specifying just a solid color is available in the
  /// constructor: set the `color` argument instead of the `decoration`
  /// argument.
  final Decoration decoration;

  /// The decoration to paint in front of the `child`.
  final Decoration foregroundDecoration;

  /// Empty space to surround the [decoration] and [child].
  final EdgeInsetsGeometry margin;

  /// [flex] is same as `flex` value which is used in [Flexible].
  ///
  /// - if flex=0: [child] will be wrapped inside a [Wrap] widget.
  /// - if flex>0: [child] will be wrapped inside a [Expanded] with flex value.
  /// - if flex is null, just return [child] widget.
  final int flex;

  /// Additional constraints to apply to the child.
  ///
  /// The constructor `width` and `height` arguments are combined with the
  /// `constraints` argument to set this property.
  ///
  /// The [padding] goes inside the constraints.
  final BoxConstraints constraints;

  /// The transformation matrix to apply before painting the container.
  final Matrix4 transform;

  /// Callback when user presses on this widget
  final VoidCallback onPressed;

  /// Callback when user long-presses on this widget
  final VoidCallback onLongPressed;

  /// `width` and `height` of `child` might depends on `alignment` or its
  /// parent's size. But in some cases we need its size is exactly wrap its
  /// [child], for example the container of [Text] wrap the size of [Text]
  /// instead of expanding to full width.
  ///
  /// If we set [ignoreImplicitWidthHeight] to true, then this widget will be
  /// wrapped into its [child]'s size and don't care about its parent size.
  ///
  /// Note: if we specify `width` or `height` then [ignoreImplicitWidthHeight]
  /// will be set to false.
  final bool ignoreImplicitWidthHeight;
  final SizedBox _sizedBox;

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

  static SizedBox _sizedBoxFromWidthHeight({
    @required double width,
    @required double height,
  }) {
    if (width != null && width > 0 && height != null && height > 0) {
      return SizedBox(width: width, height: height);
    }
    return null;
  }

  /// We've already specified a variable name `ignoreImplicitWidthHeight`,
  /// but in case it's true, however we also specify `width` or `height`, it
  /// means we no longer want to ignore implicit size.
  static bool _shouldIgnoreImplicitWidthHeight({
    @required bool ignore,
    @required double width,
    @required double height,
  }) {
    if (width != null || height != null) {
      return false;
    }
    return ignore;
  }

  /// Creates a widget that mimics [Container] with combination of common
  /// painting, positioning, and sizing widgets.
  ///
  /// - `color` argument is a shorthand for `decoration: BoxDecoration(color: color)`.
  /// Thus you MUST not provide both `color` and `decoration` argument.
  /// - `decoration`: is the decoration to paint behind the `child`.
  /// - The `height` and `width` values include the padding. It can be a double
  /// value like 100.0, or [double.infinity], or null, like the size value of
  /// [Container]
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
    this.flex,
    bool ignoreImplicitWidthHeight,
    this.onPressed,
    this.onLongPressed,
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
        _sizedBox = _sizedBoxFromWidthHeight(width: width, height: height),
        ignoreImplicitWidthHeight = _shouldIgnoreImplicitWidthHeight(
            height: height, width: width, ignore: ignoreImplicitWidthHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget current = child;

    if (false == ignoreImplicitWidthHeight) {
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

    if (false == ignoreImplicitWidthHeight) {
      // Wrap into ConstrainedBox for size of widget
      current = safeConstrainedBox(constraints: constraints, child: current);
    } else if (_sizedBox != null) {
      print('Set ignoreImplicitWidthHeight with sizedBox=$_sizedBox');
      current = SizedBox(
        width: _sizedBox.width,
        height: _sizedBox.height,
        child: current,
      );
    }

    // Margin must be the last widget to wrapped
    current = safePadding(padding: margin, child: current);

    // Then, wrap into a DynamicSize for [Expanded] or [Wrap]
    current = safeFlex(flex: flex, child: current);

    // Finally, wrap into a [Transform]
    current = safeTransform(transform: transform, child: current);

    // Don't forget to wrap this widget into GestureDetector
    current = safeOnPress(
      child: current,
      onLongPressed: onLongPressed,
      onPressed: onPressed,
    );

    return current;
  }
}
