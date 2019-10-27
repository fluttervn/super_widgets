import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/base_container.dart';

/// [SuperListTile] is a [Container] with [ListTile] inside
class SuperListTile extends BaseContainer {
  /// Create new [SuperListTile]. Its params is the combination of [Container]'s
  /// params (has the same param name) and [ListTile]'s  params (has almost the
  /// same param name, but if have any duplicated name with its parent,
  /// then add prefix `child` - for example: if [Container] has `color`
  /// property, and [ListTile] also  have `color` property, then the latter will
  /// be rename to `childColor`).
  ///
  /// The list below only show default params of [Container] :
  ///
  /// - [alignment] : default is [AlignmentDirectional.topStart]
  ///
  /// The list below only show renamed or default params of [ListTile] :
  ///
  /// - [childKey] : [Key] of the [ListTile]
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
            onTap: onTap,
            onLongPress: onLongPress,
            selected: selected,
          ),
        );
}
