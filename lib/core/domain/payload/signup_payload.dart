import 'package:json_annotation/json_annotation.dart';

part 'signup_payload.g.dart';

@JsonSerializable(createFactory: false)
class RegisterPayload {
  final String firstName;
  final String lastName;
  final String password;

  const RegisterPayload({
    required this.firstName,
    required this.lastName,
    required this.password,
  });

  Map<String, dynamic> toJson() => _$RegisterPayloadToJson(this);

  @override
  String toString() =>
      'RegisterPayload(firstName: $firstName, password: $password, lastName: $lastName)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is RegisterPayload &&
        other.firstName == firstName &&
        other.password == password &&
        other.lastName == lastName;
  }

  @JsonKey(includeToJson: false)
  @override
  int get hashCode => password.hashCode ^ password.hashCode;
}
