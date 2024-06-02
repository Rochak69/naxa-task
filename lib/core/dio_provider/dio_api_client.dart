import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:project_init/core/dio_provider/api_error.dart';
import 'package:project_init/core/dio_provider/api_response.dart';

@injectable
class DioApiClient {
  DioApiClient(
    this._dio,
  ) {
    _dio.interceptors.add(AppInterceptor());
    _dio.options.headers = {
      'Accept': 'application/json',
      'responseType': ResponseType.json,
    };

    _dio.options.connectTimeout = const Duration(seconds: 30);
    _dio.options.receiveTimeout = const Duration(seconds: 30);
  }
  final Dio _dio;

  Future<T> httpGet<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async {
    Response<dynamic>? response;

    response = await _dio.get(
      url,
      queryParameters: queryParameters,
    );

    return response.data as T;
  }
}

class AppInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    _checkResponseIsOk(response);
    handler.next(response);
  }

  @override
  void onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) {
    _handleRequestError(err);
    handler.next(err);
  }

  void _checkResponseIsOk(Response<dynamic> response) {
    if (response.statusCode! >= 200 && response.statusCode! < 300) return;
    throw ApiError(response);
  }

  void _handleRequestError(dynamic error) {
    debugPrint(error.toString());

    if (error is SocketException) {
      final errorCode = error.osError!.errorCode;
      if (errorCode == 61 ||
          errorCode == 60 ||
          errorCode == 111 ||
          // Network is unreachable
          errorCode == 101 ||
          errorCode == 104 ||
          errorCode == 51 ||
          errorCode == 8 ||
          errorCode == 113 ||
          errorCode == 7 ||
          errorCode == 64) {
        throw ApiConnectionRefusedError(error);
      }
    }
    if (error is DioException) {
      try {
        final errors = error.response?.data['errors'] as Map<String, dynamic>;
        final firstError = errors.values.firstOrNull[0];

        throw ApiErrorResponse(message: firstError);
      } catch (e) {
        if (e is ApiErrorResponse) {
          rethrow;
        } else {
          try {
            final errorMsg = error.response?.data['message'] as String;
            throw ApiErrorResponse(message: errorMsg);
          } catch (e) {
            rethrow;
          }
        }
      }
    }
    throw error;
  }
}
