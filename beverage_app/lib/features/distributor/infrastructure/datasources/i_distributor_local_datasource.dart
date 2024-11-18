// import 'package:dartz/dartz.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';
// import 'package:injectable/injectable.dart';

// import '../../../../core/infrastructure/endpoints.dart';
// import '../../../../core/infrastructure/error/failure.dart';

// abstract class IDistributorLocalDataSource {
//   Future<Either<Failure, String>> fetchProductUrl();
//   Future<Either<Failure, Unit>> storeProductUrl({required String url});
//   Future<Unit> removeUrl();
// }

// @LazySingleton(as: IDistributorLocalDataSource)
// class DistributorLocalDataSource implements IDistributorLocalDataSource {
//   final FlutterSecureStorage _secureStorage;

//   DistributorLocalDataSource(this._secureStorage);
//   @override
//   Future<Either<Failure, String>> fetchProductUrl() async {
//     try {
//       final url = await _secureStorage.read(key: secureUrlKey);

//       if (url != null) {
//         return right(url);
//       } else {
//         return left(const Failure.cache(message: 'Data not found!'));
//       }
//     } on PlatformException {
//       return left(const Failure.cache(message: 'Data not found!'));
//     }
//   }

//   @override
//   Future<Unit> removeUrl() async {
//     try {
//       await _secureStorage.delete(key: secureUrlKey);
//       return unit;
//     } on PlatformException {
//       return unit;
//     }
//   }

//   @override
//   Future<Either<Failure, Unit>> storeProductUrl({required String url}) async {
//     try {
//       await _secureStorage.write(key: secureUrlKey, value: url);
//       return right(unit);
//     } on PlatformException {
//       return left(const Failure.cache(message: 'Couldn\'t store url'));
//     }
//   }
// }
