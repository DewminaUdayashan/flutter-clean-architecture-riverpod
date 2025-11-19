// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Sinhala Sinhalese (`si`).
class AppLocalizationsSi extends AppLocalizations {
  AppLocalizationsSi([String locale = 'si']) : super(locale);

  @override
  String get products => 'නිෂ්පාදන';

  @override
  String get productDetail => 'නිෂ්පාදන විස්තර';

  @override
  String get cart => 'කරත්තය';

  @override
  String get addToCart => 'කරත්තයට එක් කරන්න';

  @override
  String get addedToCart => 'කරත්තයට එකතු කරන ලදී';

  @override
  String get yourCartIsEmpty => 'ඔබේ කරත්තය හිස් ය';

  @override
  String error(String message) {
    return 'දෝෂය: $message';
  }

  @override
  String errorLoadingCart(String message) {
    return 'කරත්තය පූරණය කිරීමේ දෝෂයකි: $message';
  }
}
