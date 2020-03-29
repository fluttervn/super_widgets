import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../base/super_widgets_base_index.dart';

/// [SuperListTile] is a [Container] with [ListTile] inside.
class SuperListTile extends BaseContainer {
  /// Create new [SuperListTile] which has a [Container] (parent) with
  /// a [ListTile] (child) inside.
  /// Thus its params is the combination of [Container]'s
  /// params and [ListTile]'s  params.
  ///
  /// <b>Params of the parent widget is:</b>
  ///
  /// - `key` : key of parent widget.
  /// - `alignment`: Align the [Container] within this widget. Defaults to
  /// [AlignmentDirectional.topStart].
  /// - `padding`: padding between this widget vs. the [Container] inside.
  /// - `margin`: margin between this widget vs. its parent.
  /// - `color` and `decoration`: only one params is valid. It's the
  /// decoration to paint behind the [Container].
  /// - `foregroundDecoration`: the decoration to paint in front of the [Container].
  /// - `width` and `height` values include the padding. It can be a double
  /// value like 100.0, or [double.infinity], or null, like the size value of
  /// [Container]
  /// - `constraints`: like [BoxConstraints] of [Container].
  /// - `transform`: the transformation matrix to apply before painting the parent.
  /// - `flex`: same as `flex` value which is used in [Flexible].
  ///  - If flex=0: this widget will be wrapped inside a [Wrap] widget.
  ///  - If flex>0: this widget will be wrapped inside a [Expanded] with flex value.
  ///  - Default flex is null, it means just return this widget.
  /// - `ignoreImplicitWidthHeight`: default is `true`. As we know, `width` and
  /// `height` of `child` might depends on `alignment` or its parent's size.
  /// But in some cases we need its size is exactly wrap its `child`, for
  /// example the container of [Text] wrap the size of [Text] instead of
  /// expanding to full width. Note: if we specify `width` or `height` then
  /// [ignoreImplicitWidthHeight] will be set to false.
  /// - `onTap`: action when press on parent widget.
  /// - `onLongPress`: action when long-press on parent widget.
  /// - `enableInkWell` and `splashColor`: WILL BE AVAILABLE IN NEXT VERSION.
  /// Wrap this widget inside an InkWell. Default to `FALSE`.
  ///  - If `enableInkWell` is not true, then just return this `widget`.
  ///  - If `enableInkWell` is true & splashColor is null, then `splashColor`
  /// will be automatically gotten from Theme instead.
  ///
  /// <b>Params of the child widget is:</b>
  ///
  /// - `childKey`: [Key] of [ListView].
  /// - `leading`: the widget to display before the title. Typically an [Icon]
  /// or a [CircleAvatar] widget.
  /// - `title`: the primary content of the list tile. Typically a [Text] widget.
  /// - `subtitle`: additional content displayed below the title. Typically a
  /// [Text] widget. If `isThreeLine` is false, this should not wrap. If
  /// `isThreeLine` is true, this should be configured to take a maximum of
  /// two lines.
  /// - `trailing`: the widget to display after the title. Typically an [Icon]
  /// widget. To show right-aligned metadata (assuming left-to-right reading
  /// order; left-aligned for right-to-left reading order), consider using a
  /// [Row] with `MainAxisAlign.baseline` alignment whose first item is
  /// [Expanded] and whose second child is the metadata text, instead of using
  /// the `trailing` property.
  /// - `isThreeLine`: Whether this list tile is intended to display three
  /// lines of text. Defaults to false
  /// - `dense`: whether this list tile is part of a vertically dense list.
  /// - `contentPadding`: the tile's internal padding. If null,
  /// `EdgeInsets.symmetric(horizontal: 16.0)` is used.
  /// - `enabled`: whether this list tile is interactive.
  /// - `selected`: if this tile is also [enabled] then icons and text are
  /// rendered with the same color.
  SuperListTile({
    // Container key
    Key pKey,
    // Container position & size
    AlignmentGeometry pAlignment,
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
    // ListTile key
    Key childKey,
    // ListTile position & size
    EdgeInsetsGeometry cMargin,
    double cMarginAllPx,
    EdgeInsetsGeometry cPadding,
    double cPaddingAllPx,
    // ListTile style
    Color cColor,
    Decoration cDecoration,
    Decoration cForegroundDecoration,
    // Specific property of ListTile
    Widget leading,
    Widget title,
    Widget subtitle,
    Widget trailing,
    bool isThreeLine = false,
    bool dense,
    EdgeInsetsGeometry contentPadding,
    VoidCallback onTap,
    VoidCallback onLongPress,
    bool enabled = true,
    bool selected = false,
  })  : assert(isThreeLine != null),
        assert(enabled != null),
        assert(selected != null),
        assert(!isThreeLine || subtitle != null),
        assert(pIgnoreImplicitWidthHeight != null),
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
          enableInkWell: false,
          child: BaseContainer(
            // Child position & size
            margin: cMargin,
            marginAllPx: cMarginAllPx,
            padding: cPadding,
            paddingAllPx: cPaddingAllPx,
            // Child style
            color: cColor,
            decoration: cDecoration,
            foregroundDecoration: cForegroundDecoration,
            child: ListTile(
              key: childKey,
              onTap: onTap,
              onLongPress: onLongPress,
              leading: leading,
              title: title,
              subtitle: subtitle,
              trailing: trailing,
              isThreeLine: isThreeLine,
              dense: dense,
              contentPadding: contentPadding,
              enabled: enabled,
              selected: selected,
            ),
          ),
        );
}
