// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoResponse _$$_TodoResponseFromJson(Map<String, dynamic> json) =>
    _$_TodoResponse(
      uuid: json['uuid'] as String?,
      description: json['description'] as String?,
      isCompleted: json['is_completed'] as bool?,
    );

Map<String, dynamic> _$$_TodoResponseToJson(_$_TodoResponse instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'description': instance.description,
      'is_completed': instance.isCompleted,
    };
