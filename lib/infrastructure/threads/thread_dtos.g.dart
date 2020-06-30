// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnswerDto _$_$_AnswerDtoFromJson(Map<String, dynamic> json) {
  return _$_AnswerDto(
    id: json['id'] as String,
    content: json['content'] as String,
    author: json['author'] as String,
  );
}

Map<String, dynamic> _$_$_AnswerDtoToJson(_$_AnswerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'author': instance.author,
    };

_$_RequestDto _$_$_RequestDtoFromJson(Map<String, dynamic> json) {
  return _$_RequestDto(
    title: json['title'] as String,
    content: json['content'] as String,
    author: json['author'] as String,
  );
}

Map<String, dynamic> _$_$_RequestDtoToJson(_$_RequestDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'author': instance.author,
    };

_$_ThreadDto _$_$_ThreadDtoFromJson(Map<String, dynamic> json) {
  return _$_ThreadDto(
    request: json['request'] == null
        ? null
        : RequestDto.fromJson(json['request'] as Map<String, dynamic>),
    answers: (json['answers'] as List)
        ?.map((e) =>
            e == null ? null : AnswerDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_ThreadDtoToJson(_$_ThreadDto instance) =>
    <String, dynamic>{
      'request': instance.request?.toJson(),
      'answers': instance.answers?.map((e) => e?.toJson())?.toList(),
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
