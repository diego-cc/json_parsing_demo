// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_todo_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateTodoRequest _$CreateTodoRequestFromJson(Map<String, dynamic> json) =>
    CreateTodoRequest(
      description: json['description'] as String?,
      isCompleted: json['is_completed'] as bool?,
    );

Map<String, dynamic> _$CreateTodoRequestToJson(CreateTodoRequest instance) =>
    <String, dynamic>{
      'description': instance.description,
      'is_completed': instance.isCompleted,
    };
