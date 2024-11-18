import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/infrastructure/error/failure.dart';
import '../../../../core/infrastructure/securepoints.dart';

abstract class IProductLocalDataSource {
  Future<Either<Failure, List<Map<String, dynamic>>>> fetchCartProducts(
      {required String authToken});
  Future<Either<Failure, Unit>> storeCartProducts({
    required List<Map<String, dynamic>> cartData,
    required String authToken,
  });
  Future<Either<Failure, Unit>> removeCart({required String authToken});
}

@LazySingleton(as: IProductLocalDataSource)
class ProductLocalDataSource implements IProductLocalDataSource {
  final FlutterSecureStorage _secureStorage;

  ProductLocalDataSource(this._secureStorage);
  @override
  Future<Either<Failure, List<Map<String, dynamic>>>> fetchCartProducts(
      {required String authToken}) async {
    try {
      var data =
          await _secureStorage.read(key: SecurePoint.secureCart + authToken);
      if (data != null) {
        List<dynamic> parseData = json.decode(data);
        List<Map<String, dynamic>> jsonData =
            parseData.map((d) => d as Map<String, dynamic>).toList();
        // debugPrint('$jsonData');
        return right(jsonData);
      }
      return left(
          const Failure.cache(message: 'No Products availbale in the cart!'));
    } on PlatformException catch (e) {
      return left(Failure.cache(
          message: e.message ?? 'No products available in the cart !'));
    }
  }

  @override
  Future<Either<Failure, Unit>> removeCart({required String authToken}) async {
    try {
      await _secureStorage.delete(key: SecurePoint.secureCart + authToken);
      return right(unit);
    } on PlatformException {
      return left(const Failure.cache(message: 'Cart not found!'));
    }
  }

  @override
  Future<Either<Failure, Unit>> storeCartProducts(
      {required List<Map<String, dynamic>> cartData,
      required String authToken}) async {
    try {
      await _secureStorage.write(
          key: SecurePoint.secureCart + authToken,
          value: json.encode(cartData));
      return right(unit);
    } on PlatformException catch (e) {
      return left(Failure.cache(
          message: e.message ?? 'Unexpected error whilst saving cart!'));
    }
  }
}
