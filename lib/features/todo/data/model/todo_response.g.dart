// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoResponseImpl _$$TodoResponseImplFromJson(Map<String, dynamic> json) =>
    _$TodoResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      todo: json['todo'] as String?,
      completed: (json['completed'] as num?)?.toInt(),
      userId: (json['userId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TodoResponseImplToJson(_$TodoResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'todo': instance.todo,
      'completed': instance.completed,
      'userId': instance.userId,
    };
