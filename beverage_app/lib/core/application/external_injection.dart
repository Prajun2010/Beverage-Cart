import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ExternalInjection {
  @preResolve
  Future<FlutterSecureStorage> get secureStorage =>
      Future.value(const FlutterSecureStorage());
  @lazySingleton
  Dio get dio => Dio();
}
