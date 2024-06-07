
import 'package:dartz/dartz.dart';
import 'package:flutter_template/core/api/response/api_response.dart';

typedef ApiResult<E, T> = Future<Either<E, ApiResponse<T>>>;
