import 'package:dartz/dartz.dart';
import 'package:flutter_template/config/di/dependency_container.dart';
import 'package:flutter_template/features/auth/data/datasource/auth_datasource.dart';

import '../../../../core/api/client/api_client.dart';
import '../../../../core/api/response/api_response.dart';
import '../../../../core/domain/domain_barrels.dart';
import '../../../../core/utils/utils_barrels.dart';
import '../response/auth_response.dart';

abstract class AuthRemoteRepository {
  ApiResult<ApiResponse, AuthResponse> login(LoginPayload payload);
  ApiResult<ApiResponse, AuthResponse> signup(RegisterPayload payload);
}

class AuthRepository implements AuthRemoteRepository {
  AuthRepository({AuthRemoteDataSource? authRemoteDataSource})
      : _authRemoteDataSource = authRemoteDataSource ??
            AuthRemoteDataSource(
                client: DependencyContainer.instanceLocator.get<ApiClient>());

  final AuthRemoteDataSource _authRemoteDataSource;
  @override
  ApiResult<ApiResponse, AuthResponse> signup(RegisterPayload payload) async {
    try {
      final response = await _authRemoteDataSource.signup(payload);
      DebugLogger.log(
          'SIGNUP', 'Pass the stage of authremotedatasource 🌟🌟🌟');
      return Right(response);
    } catch (e) {
      DebugLogger.log(
          'SIGNUP ERROR', 'got error from unsuccessful trials 😢😢');
      return Left(ApiResponse.fromError(e.toString()));
    }
  }

  @override
  ApiResult<ApiResponse, AuthResponse> login(LoginPayload payload) async {
    try {
      final response = await _authRemoteDataSource.login(payload);
      DebugLogger.log('LOGIN', 'Pass the stage of authremotedatasource 🌟🌟🌟');
      return Right(response);
    } catch (e) {
      DebugLogger.log('LOGIN ERROR', 'got error from unsuccessful trials 😢😢');
      return Left(ApiResponse.fromError(e.toString()));
    }
  }
}
