import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension ThemeDataUtil on BuildContext {
  TextStyle get textThemeTitle => Theme.of(this).textTheme.title;

  Color get primaryColor => Theme.of(this).primaryColor;
}
