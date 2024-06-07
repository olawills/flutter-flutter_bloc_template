import 'package:freezed_annotation/freezed_annotation.dart';

import '../model/user_model.dart';

part 'auth_response.g.dart';

@JsonSerializable()
class AuthResponse {
  final String token;
  final bool success;
  final User user;

  const AuthResponse({
    required this.token,
    required this.success,
    required this.user,
  });

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);
}