import 'package:flutter/material.dart'
    show BuildContext, ColorScheme, Theme, ThemeData, TextTheme;
import 'package:flutter_clean_architecture/l10n/app_localizations.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  ColorScheme get colorScheme => theme.colorScheme;
  TextTheme get textTheme => theme.textTheme;
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
