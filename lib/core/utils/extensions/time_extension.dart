import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {

  /// Formats [date] to year-month-day format based on ISO [locale]
  static String formatDateYMD(DateTime date, String locale) {
    return DateFormat.yMd(locale).format(date).toString();
  }

}