import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_template/core/api/client/api_client.dart';
import 'package:flutter_template/core/api/response/api_response.dart';
import 'package:flutter_template/core/utils/enums.dart';
import 'package:flutter_template/core/utils/logger.dart';

class DioApiClient extends ApiClient {
  late Dio _dio;

  DioApiClient() {
    _dio = Dio()
      ..options.baseUrl = '' // ** Your Api Url
      ..interceptors
          .add(InterceptorsWrapper(onRequest: (options, handler) async {
        options.queryParameters['api-key'] =
            'your-api-key'; // ** Add your Api Key if needed
        DebugLogger.log('Request =>', '${options.method} ${options.path}');
        DebugLogger.log('Headers => ', '${options.headers}');
        return handler.next(options);
      }, onResponse: (response, handler) {
        DebugLogger.log('Response => ',
            '${response.data} entire url \n ${response.requestOptions}');

        return handler.next(response);
      }, onError: (e, handler) {
        return handler.next(e);
      }));
  }

  @override
  Future<ApiResponse<T>> request<T>(String path,
      {required MethodType method,
      Map<String, dynamic>? payload,
      Map<String, dynamic>? queryParameters,
      T Function(Map<String, dynamic> json)? fromJson,
      bool? showLoader}) async {
    ApiResponse<T> apiResponse;
    Response response;

    try {
      switch (method) {
        case (MethodType.get):
          response = await _dio.get(path,
              data: payload, queryParameters: queryParameters);
          break;
        case MethodType.post:
          log(path);
          response = await _dio.post(path,
              data: payload, queryParameters: queryParameters);
          break;
        case MethodType.put:
          response = await _dio.post(path,
              data: payload, queryParameters: queryParameters);
          break;
        case MethodType.patch:
          response = await _dio.post(path,
              data: payload, queryParameters: queryParameters);
          break;
        case MethodType.delete:
          response = await _dio.post(path,
              data: payload, queryParameters: queryParameters);
          break;
      }
      apiResponse = ApiResponse(
        data: fromJson?.call(response.data),
        message: response.statusMessage,
        success: true,
      );
    } on DioException catch (e) {
      apiResponse = ApiResponse.fromError(
        (e.response?.data['message'] ?? e.message ?? 'Unknown error occured')
            as String,
      );
    }
    return apiResponse;
  }

  @override
  Future<T> download<T>() async {
    return Future.value('image/png' as T);
  }

  @override
  String handleException(Exception error) {
    String exception = '';
    switch (error as DioExceptionType) {
      case (DioExceptionType.badCertificate):
        exception = 'Bad certificate';
        break;
      case (DioExceptionType.cancel):
        exception = 'Request to server was cancelled';
        break;
      case (DioExceptionType.connectionTimeout):
        exception = 'Connection timeout with server';
        break;
      case (DioExceptionType.receiveTimeout):
        exception = 'Connection to sever failed due to internet connection';
        break;
      case (DioExceptionType.sendTimeout):
        exception = 'Send timeout in connection with server';
        break;
      case (DioExceptionType.badResponse):
        exception = 'Bad response format from sever';
        break;
      case (DioExceptionType.unknown):
        exception = 'Unexpected error occurred';
        break;
      default:
    }
    return exception;
  }

  @override
  void removeToken() => _dio.options.headers.remove('Authorization');

  @override
  void setToken(String token) =>
      _dio.options.headers['Authorization'] = 'Bearer $token';

  @override
  Future<ApiResponse<T>> uploadFile<T>(File file, String path) async {
    try {
      await _dio.put(
        path,
        data: file.openRead(),
        options: Options(
          contentType: 'image/png',
          headers: {},
        ),
      );
      return ApiResponse(success: true);
    } on DioException catch (e) {
      log(e.toString(), name: 'image response');
      return ApiResponse.fromError(
        (e.response?.data['message'] ?? 'Unknown error occurred'),
      );
    }
  }
}
