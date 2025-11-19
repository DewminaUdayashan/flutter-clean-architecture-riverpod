// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get products => 'Products';

  @override
  String get productDetail => 'Product Detail';

  @override
  String get cart => 'Cart';

  @override
  String get addToCart => 'Add to Cart';

  @override
  String get addedToCart => 'Added to Cart';

  @override
  String get yourCartIsEmpty => 'Your cart is empty';

  @override
  String error(String message) {
    return 'Error: $message';
  }

  @override
  String errorLoadingCart(String message) {
    return 'Error loading cart: $message';
  }
}
