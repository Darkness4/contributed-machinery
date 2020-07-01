import 'package:contributed_machinery/domain/core/value_objects.dart';
import 'package:contributed_machinery/domain/threads/answers/answer.dart';
import 'package:contributed_machinery/domain/threads/answers/value_objects.dart';
import 'package:contributed_machinery/domain/threads/value_objects.dart';
import 'package:contributed_machinery/infrastructure/core/firestore_helpers.dart';
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
  }) = _AnswerDto;

  factory AnswerDto.fromDomain(Answer answer) {
    return AnswerDto(
      id: answer.id.getOrCrash(),
      content: answer.content.getOrCrash(),
      author: answer.author.getOrCrash(),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  factory AnswerDto.fromJson(Map<String, dynamic> json) =>
      _$AnswerDtoFromJson(json);

  factory AnswerDto.fromFirestore(DocumentSnapshot doc) {
    return AnswerDto.fromJson(doc.data).copyWith(id: doc.documentID);
  }
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
