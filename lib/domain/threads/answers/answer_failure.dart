import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_failure.freezed.dart';

@freezed
abstract class AnswerFailure with _$AnswerFailure {
  const factory AnswerFailure.unexpected() = Unexpected;
  const factory AnswerFailure.insufficientPermissions() =
      InsufficientPermissions;
  const factory AnswerFailure.unableToUpdate() = UnableToUpdate;
}
