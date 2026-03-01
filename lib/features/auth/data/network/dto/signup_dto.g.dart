// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SignupDto _$SignupDtoFromJson(Map<String, dynamic> json) => _SignupDto(
  name: json['name'] as String,
  email: json['email'] as String,
  password: json['password'] as String,
);

Map<String, dynamic> _$SignupDtoToJson(_SignupDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
    };
