import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../error/failure.dart';

abstract class IHttpClient {
  Future<Either<Failure, Response>> get(
    String url, {
    String? authToken,
    Map<String, dynamic> queryParameters,
  });
  Future<Either<Failure, Response>> post(
    String url, {
    required dynamic data,
    bool? formData,
    String? authToken,
  });

  Future<Either<Failure, Response>> patch(
    String url, {
    required Map<String, dynamic> data,
    bool? formData,
    String? authToken,
  });

  // Future<Either<Failure, Response>> put(
  //   String url, {
  //   required Map<String, dynamic> data,
  //   bool? formData,
  //   String? authToken,
  // });
  Future<Either<Failure, Response>> delete(
    String url, {
    String? authToken,
  });
}

@LazySingleton(as: IHttpClient)
class HttpClient implements IHttpClient {
  final Dio _client;

  HttpClient(this._client);
  @override
  Future<Either<Failure, Response>> delete(String url,
      {String? authToken}) async {
    try {
      Map<String, dynamic> headers = {};
      if (authToken?.isNotEmpty ?? false) {
        headers['Authorization'] = 'token $authToken';
      }
      final response = await _client.delete(
        url,
        options: Options(headers: headers),
      );

      return right(response);
    } on DioError catch (e) {
      return left(erroCodeMapping(e));
    }
  }

  @override
  Future<Either<Failure, Response>> get(
    String url, {
    String? authToken,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      Map<String, dynamic> headers = {};
      if (authToken?.isNotEmpty ?? false) {
        headers['Authorization'] = 'token $authToken';
      }

      final response = await _client.get(
        url,
        options: Options(headers: headers),
        queryParameters: queryParameters,
      );

      return right(response);
    } on DioError catch (e) {
      return left(erroCodeMapping(e));
    }
  }

  @override
  Future<Either<Failure, Response>> patch(
    String url, {
    required Map<String, dynamic> data,
    bool? formData,
    String? authToken,
  }) async {
    try {
      Map<String, dynamic> headers = {};
      if (authToken?.isNotEmpty ?? false) {
        headers['Authorization'] = 'token $authToken';
      }

      final response = await _client.patch(
        url,
        data: formData ?? false ? FormData.fromMap(data) : jsonEncode(data),
        options: Options(headers: headers),
      );

      return right(response);
    } on DioError catch (e) {
      return left(erroCodeMapping(e));
    }
  }

  @override
  Future<Either<Failure, Response>> post(
    String url, {
    required dynamic data,
    bool? formData,
    String? authToken,
  }) async {
    try {
      // debugPrint('$url >>>>>>>');
      // debugPrint('$data >>>>>>>');
      Map<String, dynamic> headers = {};
      if (authToken?.isNotEmpty ?? false) {
        headers['Authorization'] = 'token $authToken';
      }

      final response = await _client.post(
        url,
        data: formData ?? false ? FormData.fromMap(data) : jsonEncode(data),
        options: Options(headers: headers),
      );

      // debugPrint('${response.statusCode}>>>>>>>');

      // debugPrint('${response.data}');

      // debugPrint('${response.data['url']}');

      return right(response);
    } on DioError catch (e) {
      // debugPrint('${e.message}');
      if (e.response?.statusCode == 403 ||
          e.response?.statusCode == 404 ||
          e.response?.statusCode == 400) {
        return left(Failure.server(message: e.response?.data['detail']));
      }
      return left(erroCodeMapping(e));
    }
  }

  // @override
  // Future<Either<Failure, Response>> put(String url,
  //     {required Map<String, dynamic> data, bool? formData, String? authToken}) {
  //   // TODO: implement put
  //   throw UnimplementedError();
  // }
}

Failure erroCodeMapping(DioError e) {
  final code = e.response?.statusCode ?? -1;
  if (e.type == DioErrorType.response) {
    if (code == HttpStatus.badRequest) {
      return Failure.network(message: responseMessage(statusCode: code));
    } else if ((code == HttpStatus.unauthorized) ||
        (code == HttpStatus.forbidden) ||
        (code == HttpStatus.notFound)) {
      return Failure.unauthorized(message: responseMessage(statusCode: code));
    } else if (code >= 500) {
      return Failure.server(message: responseMessage(statusCode: code));
    }
  } else if (e.type == DioErrorType.other && e.error is SocketException) {
    return const Failure.network();
  }
  return Failure.unhandled(message: responseMessage(statusCode: code));
}
