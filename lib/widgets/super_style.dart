import 'package:flutter/widgets.dart';

/// TextStyleBold is a [TextStyle] with [FontWeight] is bold
class TextStyleBold extends TextStyle {
  /// Create new text style with font weight Bold
  const TextStyleBold({Color color, double fontSize, String fontFamily})
      : super(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          fontFamily: fontFamily,
        );
}
