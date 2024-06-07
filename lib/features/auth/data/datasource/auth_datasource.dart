import '../../../../core/api/client/api_client.dart';
import '../../../../core/api/response/api_response.dart';
import '../../../../core/domain/payload/login_payload.dart';
import '../../../../core/domain/payload/signup_payload.dart';
import '../../../../core/utils/enums.dart';
import '../response/auth_response.dart';

abstract class RemoteDataSource<T> {
  Future<ApiResponse<T>> signup(RegisterPayload payload);
  Future<ApiResponse<T>> login(LoginPayload payload);
}

class AuthRemoteDataSource implements RemoteDataSource {
  final ApiClient client;

  AuthRemoteDataSource({required this.client});

  @override
  Future<ApiResponse<AuthResponse>> signup(RegisterPayload payload) async {
    return await client.request<AuthResponse>(
      '/signup',
      method: MethodType.post,
      payload: payload.toJson(),
      showLoader: true,
      fromJson: (json) => AuthResponse.fromJson(json),
    );
  }

  @override
  Future<ApiResponse<AuthResponse>> login(LoginPayload payload) async {
    return await client.request<AuthResponse>(
      '/login',
      method: MethodType.post,
      payload: payload.toJson(),
      showLoader: true,
      fromJson: (json) => AuthResponse.fromJson(json),
    );
  }
}
