import 'package:json_annotation/json_annotation.dart';

part 'login_payload.g.dart';

@JsonSerializable(createFactory: false)
class LoginPayload {
  final String username;
  final String password;

  const LoginPayload({
    required this.username,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$LoginPayloadToJson(this);

  @override
  String toString() => 'LoginPayload(username: $username, password: $password)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is LoginPayload &&
        other.username == username &&
        other.password == password;
  }

  @JsonKey(includeToJson: false)
  @override
  int get hashCode => password.hashCode;
}
