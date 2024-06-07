part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.signupEvent(
      {required String firstName,
      required String lastName,
      required String password}) = SignupEvent;
  const factory AuthEvent.loginEvent(
      {required String username, required String password}) = LoginEvent;
}
