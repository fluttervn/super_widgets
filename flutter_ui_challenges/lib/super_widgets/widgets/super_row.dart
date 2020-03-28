import 'package:flutter/widgets.dart';

import '../base/base_container.dart';

/// [SuperRow] is a [Container] with [Row] inside.
class SuperRow extends BaseContainer {
  /// Create new [SuperRow] which has a [Container]
  /// (parent) with a [Row] (child) inside.
  /// Thus its params is the combination of [Container]'s
  /// params and [Row]'s  params.
  ///
  /// <b>Params of the parent widget is:</b>
  ///
  /// - `key` : key of parent widget.
  /// - `alignment`: an align value from [AlignmentDirectional].
  /// - `padding`: an padding value from [EdgeInsetsGeometry]. It would include
  /// the `decoration`
  /// - `color` and `decoration`: only one params is valid. It's the
  /// decoration to paint behind the `child`.
  /// - `foregroundDecoration`: It's the decoration to paint in front of the `child`.
  /// - `width` and `height` values include the padding. It can be a double
  ///  value like 100.0, or [double.infinity], or null, like the size value of
  ///  [Container].
  /// - `constraints`: like [BoxConstraints] of [Container].
  /// - `transform`: the transformation matrix to apply before painting the parent.
  /// - `flex`: same as `flex` value which is used in [Flexible].
  ///  - If flex=0: this widget will be wrapped inside a [Wrap] widget.
  ///  - If flex>0: this widget will be wrapped inside a [Expanded] with flex value.
  ///  - Default flex is null, it means just return this widget.
  /// - `ignoreImplicitWidthHeight`: default is `TRUE`. As we know, `width` and
  /// `height` of `child` might depends on `alignment` or its parent's size.
  /// But in some cases we need its size is exactly wrap its `child`, for
  /// example the container of [Text] wrap the size of [Text] instead of
  /// expanding to full width. Note: if we specify `width` or `height` then
  /// [ignoreImplicitWidthHeight] will be set to false.
  /// - `onPressed`: action when press on parent widget.
  /// - `onLongPressed`: action when long-press on parent widget.
  /// - `enableInkWell` and `splashColor`: WILL BE AVAILABLE IN NEXT VERSION.
  /// Wrap this widget inside an InkWell. Default to `FALSE`.
  ///  - If `enableInkWell` is not true, then just return this `widget`.
  ///  - If `enableInkWell` is true & splashColor is null, then `splashColor`
  /// will be automatically gotten from Theme instead.
  ///
  /// <b>Params of the child widget is:</b>
  ///
  /// - `childKey`: [Key] of [Row].
  /// - `children`: list of children widget of [Row].
  /// - `mainAxisAlignment`: How the children should be placed along the main
  /// axis. Defaults to [MainAxisAlignment.start].
  /// - `mainAxisSize`: How much space should be occupied in the main axis.
  /// Defaults to [MainAxisSize.max].
  /// - `crossAxisAlignment`: How the children should be placed along the cross
  /// axis. Defaults to [CrossAxisAlignment.center].
  /// - `verticalDirection`: Determines the order to lay children out
  /// vertically and how to interpret `start` and `end` in the vertical
  /// direction. Defaults to [VerticalDirection.down].
  /// - `textDirection`: Determines the order to lay children out horizontally
  /// and how to interpret `start` and `end` in the horizontal direction.
  /// Defaults to the ambient [Directionality].
  /// - `textBaseline`: if aligning items according to their baseline, which
  /// baseline to use.
  SuperRow({
    // Container key
    Key pKey,
    // Container position & size
    AlignmentGeometry pAlignment = AlignmentDirectional.topStart,
    Matrix4 pTransform,
    EdgeInsetsGeometry pMargin,
    double pMarginAllPx,
    EdgeInsetsGeometry pPadding,
    double pPaddingAllPx,
    double pWidth,
    double pHeight,
    int pFlex,
    BoxConstraints pConstraints,
    bool pIgnoreImplicitWidthHeight = false,
    // Container style
    Color pColor,
    Decoration pDecoration,
    Decoration pForegroundDecoration,
    bool pEnableInkWell = false,
    Color pSplashColor,
    // Container action
    VoidCallback pOnPressed,
    VoidCallback pOnLongPressed,
    // Row key
    Key cKey,
    // Row position & size
    AlignmentGeometry cAlignment = AlignmentDirectional.topStart,
    EdgeInsetsGeometry cMargin,
    double cMarginAllPx,
    EdgeInsetsGeometry cPadding,
    double cPaddingAllPx,
    int cFlex,
    // Row style
    Color cColor,
    Decoration cDecoration,
    Decoration cForegroundDecoration,
    // Specific property of Row
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline textBaseline,
    // Row children
    List<Widget> children,
  })  : assert(pIgnoreImplicitWidthHeight != null),
        assert(pAlignment != null),
        assert(pEnableInkWell != null),
        assert(cAlignment != null),
        assert(mainAxisAlignment != null),
        assert(mainAxisSize != null),
        assert(crossAxisAlignment != null),
        assert(verticalDirection != null),
        super(
          // Parent key
          key: pKey,
          // Parent position & size
          alignment: pAlignment,
          transform: pTransform,
          margin: pMargin,
          marginAllPx: pMarginAllPx,
          padding: pPadding,
          paddingAllPx: pPaddingAllPx,
          width: pWidth,
          height: pHeight,
          flex: pFlex,
          constraints: pConstraints,
          ignoreImplicitWidthHeight: pIgnoreImplicitWidthHeight,
          // Parent style
          color: pColor,
          decoration: pDecoration,
          foregroundDecoration: pForegroundDecoration,
          enableInkWell: pEnableInkWell,
          splashColor: pSplashColor,
          // Parent action
          onPressed: pOnPressed,
          onLongPressed: pOnLongPressed,
          child: BaseContainer(
            // Child position & size
            alignment: cAlignment,
            margin: cMargin,
            marginAllPx: cMarginAllPx,
            padding: cPadding,
            paddingAllPx: cPaddingAllPx,
            flex: cFlex,
            // Child style
            color: cColor,
            decoration: cDecoration,
            foregroundDecoration: cForegroundDecoration,
            child: Row(
              // Child key
              key: cKey,
              mainAxisAlignment: mainAxisAlignment,
              mainAxisSize: mainAxisSize,
              crossAxisAlignment: crossAxisAlignment,
              verticalDirection: verticalDirection,
              textDirection: textDirection,
              textBaseline: textBaseline,
              children: children ?? <Widget>[],
            ),
          ),
        );
}
