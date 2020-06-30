import 'package:freezed_annotation/freezed_annotation.dart';

part 'thread_failure.freezed.dart';

@freezed
abstract class ThreadFailure with _$ThreadFailure {
  const factory ThreadFailure.unexpected() = Unexpected;
  const factory ThreadFailure.insufficientPermissions() =
      InsufficientPermissions;
  const factory ThreadFailure.unableToUpdate() = UnableToUpdate;
}
