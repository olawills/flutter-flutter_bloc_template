part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.signupLoading() = SignupLoading;
  const factory AuthState.signupError({required ApiResponse response}) =
      SignupError;
  const factory AuthState.signupSuccess(
      {required ApiResponse<AuthResponse> response}) = SignupSuccess;
}
