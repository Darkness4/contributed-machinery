import 'package:contributed_machinery/domain/core/value_objects.dart';
import 'package:contributed_machinery/domain/threads/answer.dart';
import 'package:contributed_machinery/domain/threads/request.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/domain/threads/value_objects.dart';
import 'package:contributed_machinery/infrastructure/core/firestore_helpers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

part 'thread_dtos.freezed.dart';
part 'thread_dtos.g.dart';

@freezed
abstract class AnswerDto with _$AnswerDto {
  const factory AnswerDto({
    @required String id,
    @required String content,
    @required String author,
  }) = _AnswerDto;

  factory AnswerDto.fromDomain(Answer answer) {
    return AnswerDto(
      id: answer.id.getOrCrash(),
      content: answer.content.getOrCrash(),
      author: answer.author.getOrCrash(),
    );
  }

  factory AnswerDto.fromJson(Map<String, dynamic> json) =>
      _$AnswerDtoFromJson(json);
}

@freezed
abstract class RequestDto with _$RequestDto {
  const factory RequestDto({
    @required String title,
    @required String content,
    @required String author,
  }) = _RequestDto;

  factory RequestDto.fromDomain(Request request) {
    return RequestDto(
      title: request.title.getOrCrash(),
      content: request.content.getOrCrash(),
      author: request.author.getOrCrash(),
    );
  }

  factory RequestDto.fromJson(Map<String, dynamic> json) =>
      _$RequestDtoFromJson(json);
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

@freezed
abstract class ThreadDto with _$ThreadDto {
  factory ThreadDto({
    @JsonKey(ignore: true) String id,
    @required RequestDto request,
    @required List<AnswerDto> answers,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
  }) = _ThreadDto;

  factory ThreadDto.fromDomain(Thread thread) {
    return ThreadDto(
      id: thread.id.getOrCrash(),
      request: RequestDto.fromDomain(thread.request),
      answers: thread.answers
          .getOrCrash()
          .mapIndexed(
            (index, answer) => AnswerDto.fromDomain(answer),
          )
          .asList(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory ThreadDto.fromFirestore(DocumentSnapshot doc) {
    return ThreadDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }

  factory ThreadDto.fromJson(Map<String, dynamic> json) =>
      _$ThreadDtoFromJson(json);
}

extension AnswerDtoX on AnswerDto {
  Answer toDomain() {
    return Answer(
      id: UniqueId.fromUniqueString(id),
      content: AnswerContent(content),
      author: Author(author),
    );
  }
}

extension RequestDtoX on RequestDto {
  Request toDomain() {
    return Request(
      title: RequestTitle(title),
      content: RequestContent(content),
      author: Author(author),
    );
  }
}

extension ThreadDtoX on ThreadDto {
  Thread toDomain() {
    return Thread(
      id: UniqueId.fromUniqueString(id),
      request: request.toDomain(),
      answers:
          AnswerList(answers.map((dto) => dto.toDomain()).toImmutableList()),
    );
  }
}
