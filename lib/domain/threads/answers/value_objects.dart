import 'package:contributed_machinery/domain/core/failures.dart';
import 'package:contributed_machinery/domain/core/value_objects.dart';
import 'package:contributed_machinery/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class AnswerContent extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory AnswerContent(String input) {
    assert(input != null);
    return AnswerContent._(
      validateStringNotEmpty(input),
    );
  }

  const AnswerContent._(this.value);
}
