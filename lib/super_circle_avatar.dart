import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'base/safe_widget.dart';

/// [SuperCircleAvatar] is a [CircleAvatar] with border
class SuperCircleAvatar extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final Color foregroundColor;
  final ImageProvider backgroundImage;

  final double radius;
  final double minRadius;
  final double maxRadius;

  final VoidCallback onPressed;
  final VoidCallback onLongPressed;
  final EdgeInsetsGeometry margin;
  final double borderWidth;
  final Color borderColor;

  /// Create new [SuperCircleAvatar].
  SuperCircleAvatar({
    Key key,
    this.child,
    this.backgroundColor,
    this.backgroundImage,
    this.foregroundColor,
    this.radius,
    this.minRadius,
    this.maxRadius,
    this.onPressed,
    this.onLongPressed,
    this.margin,
    this.borderWidth = 0.0,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget current = CircleAvatar(
      key: key,
      child: child,
      backgroundColor: backgroundColor,
      backgroundImage: backgroundImage,
      foregroundColor: foregroundColor,
      radius: radius,
      minRadius: minRadius,
      maxRadius: maxRadius,
    );
    if (borderWidth > 0 && borderColor != null) {
      current = CircleAvatar(
        child: current,
        backgroundColor: borderColor,
        radius: radius == null ? null : radius + borderWidth,
        minRadius: minRadius == null ? null : minRadius + borderWidth,
        maxRadius: maxRadius == null ? null : maxRadius + borderWidth,
      );
    }
    current = safePadding(padding: margin, child: current);
    current = safeOnPress(
      onPressed: onPressed,
      onLongPressed: onLongPressed,
      child: current,
    );
    return current;
  }
}
