// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RequestDto _$_$_RequestDtoFromJson(Map<String, dynamic> json) {
  return _$_RequestDto(
    title: json['title'] as String,
    content: json['content'] as String,
    author: json['author'] as String,
    published: const DateTimeTimestampConverter()
        .fromJson(json['published'] as Timestamp),
    updated: const DateTimeTimestampConverter()
        .fromJson(json['updated'] as Timestamp),
  );
}

Map<String, dynamic> _$_$_RequestDtoToJson(_$_RequestDto instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'author': instance.author,
      'published':
          const DateTimeTimestampConverter().toJson(instance.published),
      'updated': const DateTimeTimestampConverter().toJson(instance.updated),
    };

_$_ThreadDto _$_$_ThreadDtoFromJson(Map<String, dynamic> json) {
  return _$_ThreadDto(
    request: json['request'] == null
        ? null
        : RequestDto.fromJson(json['request'] as Map<String, dynamic>),
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_ThreadDtoToJson(_$_ThreadDto instance) =>
    <String, dynamic>{
      'request': instance.request?.toJson(),
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };
