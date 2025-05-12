// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefaultResponse _$DefaultResponseFromJson(Map<String, dynamic> json) =>
    DefaultResponse(
      json['status'] as String,
      json['message'] as String,
    );

Map<String, dynamic> _$DefaultResponseToJson(DefaultResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
