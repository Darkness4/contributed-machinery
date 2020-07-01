import 'package:contributed_machinery/domain/core/failures.dart';
import 'package:contributed_machinery/domain/threads/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'request.freezed.dart';

@freezed
abstract class Request with _$Request {
  const factory Request({
    @required RequestTitle title,
    @required RequestContent content,
    @required Author author,
    @required ValueDateTime published,
    @required ValueDateTime updated,
  }) = _Request;

  factory Request.empty() => Request(
        title: RequestTitle(''),
        content: RequestContent(''),
        author: Author(''),
        published: ValueDateTime(DateTime.now()),
        updated: ValueDateTime(DateTime.now()),
      );
}

extension RequestX on Request {
  Option<ValueFailure<dynamic>> get failureOption {
    return title.failureOrUnit
        .andThen(content.failureOrUnit)
        .andThen(author.failureOrUnit)
        .andThen(published.failureOrUnit)
        .andThen(updated.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
