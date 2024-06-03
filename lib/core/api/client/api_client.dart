import 'dart:io';

import '../response/api_response.dart';
import '../../utils/enums.dart';

abstract class ApiClient {
  Future<ApiResponse<T>> request<T>(
    String path, {
    required MethodType method,
    Map<String, dynamic>? payload,
    Map<String, dynamic>? queryParameters,
    T Function(Map<String, dynamic> json)? fromJson,
    bool? showLoader,
  });

  Future<ApiResponse<T>> uploadFile<T>(File file, String path);
  Future<T> download<T>();
  void setToken(String token);
  void removeToken();
  String handleException(Exception error);
}
