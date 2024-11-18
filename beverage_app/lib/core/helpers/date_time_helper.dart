import 'package:intl/intl.dart';

class DateTimeHelper {
  static String dateTimeFormatter(String dateTime,
      {String? format, bool enableOrdinals = false}) {
    String formatedDate = DateFormat(format ?? 'yyyy/MM/dd, hh:mm a')
        .format(DateTime.parse(dateTime).toLocal())
        .toString();

    if (format != null && format == 'd MMM y' && enableOrdinals) {
      List<String> splitedDate = formatedDate.split(' ');
      int extractedDay = int.parse(splitedDate[0]);

      if (extractedDay >= 11 && extractedDay <= 13) {
        return splitedDate[0] +
            'th' +
            ' ' +
            splitedDate[1] +
            ' ' +
            splitedDate[2];
      }

      switch (extractedDay % 10) {
        case 1:
          return splitedDate[0] +
              'st' +
              ' ' +
              splitedDate[1] +
              ' ' +
              splitedDate[2];

        case 2:
          return splitedDate[0] +
              'nd' +
              ' ' +
              splitedDate[1] +
              ' ' +
              splitedDate[2];
        case 3:
          return splitedDate[0] +
              'rd' +
              ' ' +
              splitedDate[1] +
              ' ' +
              splitedDate[2];
        default:
          return splitedDate[0] +
              'th' +
              ' ' +
              splitedDate[1] +
              ' ' +
              splitedDate[2];
      }
    }
    return formatedDate;
  }
}
