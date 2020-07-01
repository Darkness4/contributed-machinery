// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnswerDto _$_$_AnswerDtoFromJson(Map<String, dynamic> json) {
  return _$_AnswerDto(
    content: json['content'] as String,
    author: json['author'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
    published: const DateTimeTimestampConverter()
        .fromJson(json['published'] as Timestamp),
    updated: const DateTimeTimestampConverter()
        .fromJson(json['updated'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_AnswerDtoToJson(_$_AnswerDto instance) =>
    <String, dynamic>{
      'content': instance.content,
      'author': instance.author,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
      'published':
          const DateTimeTimestampConverter().toJson(instance.published),
      'updated': const DateTimeTimestampConverter().toJson(instance.updated),
    };
