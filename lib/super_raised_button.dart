import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SuperRaisedButton extends Container {
  /// [SuperRaisedButton] is a [Container] with [RaisedButton] inside. Its params is the combination
  /// of [Container]'s params (has the same param name) and [RaisedButton]'s params (has almost the
  /// same param name, but if have any duplicated name with its parent, then add prefix `child` -
  /// for example: Container has `color` property, then if [RaisedButton] also have `color`
  /// property, then the latter will be rename to `childColor`). The list below only documents
  /// for [RaisedButton]
  ///
  /// - childKey: [Key] of the [RaisedButton]
  /// - childText: the [Widget] inside the [RaisedButton], often is a [Text]
  /// - onPressed: [VoidCallback] press event of the [RaisedButton]
  /// - onHighlightChanged: [ValueChanged] highlight event of the [RaisedButton]
  /// - textTheme: [ButtonTextTheme] of the [RaisedButton]
  /// - textColor: text [Color] of the [RaisedButton]
  /// - disabledTextColor: disabled text [Color] of the [RaisedButton]
  /// - childColor: background color [Color] of the [RaisedButton]
  /// - disabledColor: disable background color [Color] of the [RaisedButton]
  /// - highlightColor: highlight background color [Color] of the [RaisedButton]
  /// - splashColor: splash [Color] of the [RaisedButton]
  /// - colorBrightness: [Brightness] color of the [RaisedButton]
  /// - elevation: elevation value ([double]) of the [RaisedButton]
  /// - highlightElevation: highlight elevation value ([double]) of the [RaisedButton]
  /// - disabledElevation: disable elevation value ([double]) of the [RaisedButton]
  /// - childPadding: padding ([EdgeInsetsGeometry]) of the [RaisedButton]
  /// - shape: shape ([ShapeBorder]) of the [RaisedButton]
  /// - clipBehavior: clip behavior ([Clip]) of the [RaisedButton], default is [Clip.none]
  /// - materialTapTargetSize: [MaterialTapTargetSize] of the [RaisedButton]
  /// - animationDuration: splash animation duration ([Duration]) of the [RaisedButton]
  SuperRaisedButton({
    Key key,
    AlignmentGeometry alignment,
    EdgeInsetsGeometry padding,
    Color color,
    Decoration decoration,
    Decoration foregroundDecoration,
    double width,
    double height,
    BoxConstraints constraints,
    EdgeInsetsGeometry margin,
    Matrix4 transform,
    Key childKey,
    Widget childText,
    VoidCallback onPressed,
    ValueChanged<bool> onHighlightChanged,
    ButtonTextTheme textTheme,
    Color textColor,
    Color disabledTextColor,
    Color childColor,
    Color disabledColor,
    Color highlightColor,
    Color splashColor,
    Brightness colorBrightness,
    double elevation,
    double highlightElevation,
    double disabledElevation,
    EdgeInsetsGeometry childPadding,
    ShapeBorder shape,
    Clip clipBehavior = Clip.none,
    MaterialTapTargetSize materialTapTargetSize,
    Duration animationDuration,
  })  : assert(elevation == null || elevation >= 0.0),
        assert(highlightElevation == null || highlightElevation >= 0.0),
        assert(disabledElevation == null || disabledElevation >= 0.0),
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
          margin: margin,
          transform: transform,
          child: RaisedButton(
            key: childKey,
            onPressed: onPressed ?? () {},
            onHighlightChanged: onHighlightChanged,
            textTheme: textTheme,
            textColor: textColor,
            disabledTextColor: disabledTextColor,
            color: color,
            disabledColor: disabledColor,
            highlightColor: highlightColor,
            splashColor: splashColor,
            colorBrightness: colorBrightness,
            elevation: elevation,
            highlightElevation: highlightElevation,
            disabledElevation: disabledElevation,
            padding: padding,
            shape: shape,
            clipBehavior: clipBehavior,
            materialTapTargetSize: materialTapTargetSize,
            animationDuration: animationDuration,
            child: childText,
          ),
        );
}
