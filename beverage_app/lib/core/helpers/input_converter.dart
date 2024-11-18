import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

class InvalidInputFailure {
  String? msg;
  InvalidInputFailure({this.msg = 'No input value yet'});
}

@lazySingleton
class InputConvert {
  static String emptyMessage = 'is required';

  Either<InvalidInputFailure, String> notEmpty({
    String? value,
    String? fieldName,
  }) {
    if (value?.isNotEmpty ?? false) {
      return right(value!);
    }
    return fieldName?.isNotEmpty ?? false
        ? left(InvalidInputFailure(
            msg: '$fieldName ${emptyMessage.toLowerCase()}'))
        : left(InvalidInputFailure(msg: 'value ' + emptyMessage));
  }

  Either<InvalidInputFailure, String> isValidNumber({
    String? value,
    String? fieldName,
  }) {
    if (value?.isEmpty ?? false) {
      return fieldName?.isNotEmpty ?? false
          ? left(InvalidInputFailure(
              msg: '$fieldName ${emptyMessage.toLowerCase()}'))
          : left(InvalidInputFailure(msg: 'value ' + emptyMessage));
    }
    try {
      final stringNumber = int.tryParse(value!);

      if ((stringNumber.toString().length == 10)) {
        return right(stringNumber.toString());
      }
      return left(InvalidInputFailure(msg: 'Not a valid mobile number'));
    } on FormatException {
      return left(InvalidInputFailure(msg: 'Not a valid mobile number'));
    }
  }

  Either<InvalidInputFailure, String> isValidEmail({
    String? value,
    String? fieldName,
  }) {
    if (value?.isEmpty ?? false) {
      return fieldName?.isNotEmpty ?? false
          ? left(InvalidInputFailure(
              msg: '$fieldName ${emptyMessage.toLowerCase()}'))
          : left(InvalidInputFailure(msg: 'value ' + emptyMessage));
    }

    if (RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value.toString())) {
      return right(value!);
    }
    return left(InvalidInputFailure(msg: 'Not a valid email address'));
  }
}
