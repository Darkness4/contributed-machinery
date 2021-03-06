import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contributed_machinery/domain/core/value_objects.dart';
import 'package:contributed_machinery/domain/threads/answers/answer.dart';
import 'package:contributed_machinery/domain/threads/answers/value_objects.dart';
import 'package:contributed_machinery/domain/threads/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../thread_dtos.dart';

part 'answer_dtos.freezed.dart';
part 'answer_dtos.g.dart';

@freezed
abstract class AnswerDto with _$AnswerDto {
  const factory AnswerDto({
    @JsonKey(ignore: true) String id,
    @required String content,
    @required String author,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
    @DateTimeTimestampConverter() @required DateTime published,
    @DateTimeTimestampConverter() @required DateTime updated,
  }) = _AnswerDto;

  factory AnswerDto.fromDomain(Answer answer) {
    return AnswerDto(
      id: answer.id.getOrCrash(),
      content: answer.content.getOrCrash(),
      author: answer.author.getOrCrash(),
      serverTimeStamp: FieldValue.serverTimestamp(),
      published: answer.published.getOrCrash(),
      updated: answer.updated.getOrCrash(),
    );
  }

  factory AnswerDto.fromJson(Map<String, dynamic> json) =>
      _$AnswerDtoFromJson(json);

  factory AnswerDto.fromFirestore(DocumentSnapshot doc) {
    return AnswerDto.fromJson(doc.data()).copyWith(id: doc.id);
  }

  static DateTime dateTimeAsIs(DateTime dateTime) => dateTime;
}

extension AnswerDtoX on AnswerDto {
  Answer toDomain() {
    return Answer(
      id: UniqueId.fromUniqueString(id),
      content: AnswerContent(content),
      author: Author(author),
      published: ValueDateTime(published),
      updated: ValueDateTime(updated),
    );
  }
}
