import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.server({required String message, HttpStatus? code}) =
      _Server;
  const factory Failure.cache({@Default('No Data Found') String message}) =
      _Cache;
  const factory Failure.unauthorized(
      {required String message, HttpStatus? code}) = _Unauthorized;
  const factory Failure.network(
      {@Default('No Internet Connection') String message,
      HttpStatus? code}) = _Network;
  const factory Failure.unhandled({required String message}) = _Unhandled;
}

String responseMessage({required int statusCode}) {
  String message = 'Unseen issue has occured';
  switch (statusCode) {
    case HttpStatus.ok:
    case HttpStatus.created:
    case HttpStatus.accepted:
    case HttpStatus.noContent:
      message = 'Successfully completed request';
      break;
    case HttpStatus.multipleChoices:
      message = 'The request can be handled in more than 1 way';
      break;
    case HttpStatus.movedPermanently:
      message = 'The request has been moved permanently';
      break;
    case HttpStatus.badRequest:
      message = 'Server cannot understand your request';
      break;
    case HttpStatus.notFound:
      message = 'Requested resource not found';
      break;
    case HttpStatus.paymentRequired:
      message = 'Your request is a paid service. Please make the payment.';
      break;
    case HttpStatus.unauthorized:
    case HttpStatus.forbidden:
      message = 'Please make sure you are authorized to used the service';
      break;
    case HttpStatus.internalServerError:
      message = 'Request could not be processed due to internal issues';
      break;
    case HttpStatus.notImplemented:
      message = 'Requested feature not implemented yet';
      break;
    case HttpStatus.serviceUnavailable:
      message = 'System is unavailable at the moment due to maintain';
      break;
    case HttpStatus.badGateway:
      message = 'Invalid response';
      break;
    case HttpStatus.gatewayTimeout:
      message = 'Server could not respond on time';
      break;
  }
  return message;
}
