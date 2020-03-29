import 'package:flutter/widgets.dart';

/// TextStyleBold is a [TextStyle] with [FontWeight] is bold
class TextStyleBold extends TextStyle {
  /// Create new text style with font weight Bold
  const TextStyleBold({Color color, double fontSize})
      : super(
          color: color,
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
        );
}

/// TextStyleItalic is a [TextStyle] with [FontStyle] is italic
class TextStyleItalic extends TextStyle {
  /// Create new text style with font weight Bold
  const TextStyleItalic({Color color, double fontSize})
      : super(
          color: color,
          fontStyle: FontStyle.italic,
          fontSize: fontSize,
        );
}
