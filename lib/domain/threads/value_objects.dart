import 'package:contributed_machinery/domain/core/failures.dart';
import 'package:contributed_machinery/domain/core/value_objects.dart';
import 'package:contributed_machinery/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class RequestContent extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory RequestContent(String input) {
    assert(input != null);
    return RequestContent._(
      validateStringNotEmpty(input),
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

class ValueDateTime extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory ValueDateTime(DateTime input) {
    assert(input != null);
    return ValueDateTime._(right(input));
  }

  const ValueDateTime._(this.value);
}
