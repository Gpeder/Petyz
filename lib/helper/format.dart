import 'package:intl/intl.dart';

class MoneyHelper {
  static final _formatter = NumberFormat.currency(
    locale: 'pt_BR',
    symbol: 'R\$',
    decimalDigits: 2,
  );

  static String format(num value) {
    return _formatter.format(value);
  }
}