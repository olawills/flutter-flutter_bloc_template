import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_template/config/di/dependency_container.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/api/response/api_response.dart';
import '../../../core/domain/domain_barrels.dart';
import '../data/repository/auth_repository.dart';
import '../data/response/auth_response.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository repository =
      DependencyContainer.instanceLocator.get<AuthRepository>();
  AuthBloc() : super(const AuthInitial()) {
    on<SignupEvent>((event, emit) => _signup(event, emit));
  }

  _signup(SignupEvent event, emit) async {
    emit(const SignupLoading());
    final payload = RegisterPayload(
        firstName: event.firstName,
        lastName: event.lastName,
        password: event.password);
    final response = await repository.signup(payload);
    response.fold(
      (l) => emit(SignupError(response: l)),
      (r) => emit(SignupSuccess(response: r)),
    );
  }
}
