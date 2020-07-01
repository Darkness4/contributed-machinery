import 'package:contributed_machinery/domain/core/entity.dart';
import 'package:contributed_machinery/domain/core/failures.dart';
import 'package:contributed_machinery/domain/core/value_objects.dart';
import 'package:contributed_machinery/domain/threads/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_objects.dart';

part 'answer.freezed.dart';

@freezed
abstract class Answer with _$Answer implements IEntity {
  const factory Answer({
    @required UniqueId id,
    @required AnswerContent content,
    @required Author author,
    @required ValueDateTime published,
    @required ValueDateTime updated,
  }) = _Answer;

  factory Answer.empty() => Answer(
        id: UniqueId(),
        content: AnswerContent(''),
        author: Author(''),
        published: ValueDateTime(DateTime.now()),
        updated: ValueDateTime(DateTime.now()),
      );
}

extension AnswerX on Answer {
  Option<ValueFailure<dynamic>> get failureOption {
    return content.failureOrUnit
        .andThen(author.failureOrUnit)
        .andThen(published.failureOrUnit)
        .andThen(updated.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
