class ApiResponse<T> {
  final String? message;
  final bool? success;
  final T? data;

  ApiResponse({
    this.message,
    this.success,
    this.data,
  });

  @override
  String toString() =>
      'ApiResponse(message: $message, status: $success, data: $data)';

  factory ApiResponse.fromError(String message) {
    return ApiResponse(
      success: false,
      message: message,
    );
  }
}
