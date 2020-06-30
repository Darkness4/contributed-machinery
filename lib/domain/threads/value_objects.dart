import 'package:contributed_machinery/domain/core/failures.dart';
import 'package:contributed_machinery/domain/core/value_objects.dart';
import 'package:contributed_machinery/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'answer.dart';

class RequestContent extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 1000;

  factory RequestContent(String input) {
    assert(input != null);
    return RequestContent._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const RequestContent._(this.value);
}

class RequestTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 30;

  factory RequestTitle(String input) {
    assert(input != null);
    return RequestTitle._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const RequestTitle._(this.value);
}

class Author extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 64;

  factory Author(String input) {
    assert(input != null);
    return Author._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const Author._(this.value);
}

class AnswerList extends ValueObject<KtList<Answer>> {
  @override
  final Either<ValueFailure<KtList<Answer>>, KtList<Answer>> value;

  static const maxLength = 250;

  factory AnswerList(KtList<Answer> input) {
    assert(input != null);
    return AnswerList._(
      validateMaxListLength(input, maxLength),
    );
  }

  const AnswerList._(this.value);

  int get length {
    return value.getOrElse(() => emptyList()).size;
  }
}

class AnswerContent extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 500;

  factory AnswerContent(String input) {
    assert(input != null);
    return AnswerContent._(
      validateMaxStringLength(input, maxLength).flatMap(validateStringNotEmpty),
    );
  }

  const AnswerContent._(this.value);
}
