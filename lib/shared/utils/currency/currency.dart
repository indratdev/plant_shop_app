import 'package:intl/intl.dart';

class CustomCurrency {
  static String formatCurrencyToUS(double amount) {
    final currencyFormatter =
        NumberFormat.currency(locale: 'en_US', symbol: '\u0024');
    return currencyFormatter.format(amount);
  }
}
