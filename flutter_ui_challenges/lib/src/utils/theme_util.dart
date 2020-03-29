import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension ThemeDataUtil on BuildContext {
  TextStyle get textThemeTitle => Theme.of(this).textTheme.title;
  TextStyle get textThemeSubhead => Theme.of(this).textTheme.subhead;
  TextStyle get textThemeSubtitle => Theme.of(this).textTheme.subtitle;

  Color get primaryColor => Theme.of(this).primaryColor;
}

extension TextStyleUtil on TextStyle {
  TextStyle withColor(Color color) {
    return merge(TextStyle(color: color));
  }

  TextStyle withFontSize(double fontSize) {
    return merge(TextStyle(fontSize: fontSize));
  }
}
