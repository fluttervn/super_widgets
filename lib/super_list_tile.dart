import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// [SuperListTile] is a [Container] with [ListTile] inside
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
  /// - `padding`: padding between this widget vs. the [Container] inside
  /// - `margin`: margin between this widget vs. its parent.
  /// - `color` and `decoration`: only one params is valid. It's the
  /// decoration to paint behind the [Container].
  /// - `foregroundDecoration`: the decoration to paint in front of the [Container].
  /// - `width` and `height` values include the padding. It can be a double
  /// value like 100.0, or [double.infinity], or null, like the size value of
  /// [Container]
  /// - `constraints`: like [BoxConstraints] of [Container]
  /// - `transform`: the transformation matrix to apply before painting the parent.
  /// - `flex`: same as `flex` value which is used in [Flexible].
  ///  - If flex=0: [child] will be wrapped inside a [Wrap] widget
  ///  - If flex>0: [child] will be wrapped inside a [Expanded] with flex value
  ///  - If flex is null, just return [child] widget
  /// - `ignoreImplicitWidthHeight`: default is `true`. As we know, `width` and
  /// `height` of [child] might depends on [alignment] or its parent's size.
  /// But in some cases we need its size is exactly wrap its [child], for
  /// example the container of [Text] wrap the size of [Text] instead of
  /// expanding to full width.
  /// - `onPressed`: action when press on parent widget
  /// - `onLongPressed`: action when long-press on parent widget
  /// - `enableInkWell` and `splashColor`: Wrap this widget inside an
  /// [InkWell]. Its default value is `FALSE`.
  ///  - If [enableInkWell] is not true, then just return this [widget].
  ///  - If [enableInkWell] is true splashColor is null, then `splashColor`
  /// will be automatically gotten from Theme instead.
  ///
  /// <b>Params of the child widget is:</b>
  ///
  /// - `childKey`: [Key] of [ListView]
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
  /// [Row] with [MainAxisAlign.baseline] alignment whose first item is
  /// [Expanded] and whose second child is the metadata text, instead of using
  /// the `trailing` property.
  /// - `isThreeLine`: Whether this list tile is intended to display three
  /// lines of text. Defaults to false
  /// - `dense`: whether this list tile is part of a vertically dense list.
  /// - `contentPadding`: the tile's internal padding.
  /// - `enabled`: whether this list tile is interactive.
  /// - `selected`: if this tile is also [enabled] then icons and text are
  /// rendered with the same color.
  SuperListTile({
    Key key,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    EdgeInsetsGeometry padding,
    EdgeInsetsGeometry margin,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    int flex,
    bool ignoreImplicitWidthHeight = true,
    VoidCallback onPressed,
    VoidCallback onLongPressed,
    Matrix4 transform,
    Key childKey,
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
        super(
          key: key,
          alignment: alignment,
          padding: padding,
          color: color,
          decoration: decoration,
          foregroundDecoration: foregroundDecoration,
          width: width,
          height: height,
          constraints: constraints,
          flex: flex,
          ignoreImplicitWidthHeight: ignoreImplicitWidthHeight,
          onPressed: onPressed,
          onLongPressed: onLongPressed,
          margin: margin,
          transform: transform,
          child: ListTile(
            key: childKey,
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
        );
}
