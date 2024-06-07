
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: '_id')
  final String id;
  final String firstName;
  final String lastName;
  final String profilePicture;

  const User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.profilePicture,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}