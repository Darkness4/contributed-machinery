import 'package:contributed_machinery/domain/core/entity.dart';
import 'package:contributed_machinery/domain/core/failures.dart';
import 'package:contributed_machinery/domain/core/value_objects.dart';
import 'package:contributed_machinery/domain/threads/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';

import 'answer.dart';
import 'request.dart';

part 'thread.freezed.dart';

@freezed
abstract class Thread with _$Thread implements IEntity {
  const factory Thread({
    @required UniqueId id,
    @required Request request,
    @required AnswerList answers,
  }) = _Thread;

  factory Thread.empty() => Thread(
        id: UniqueId(),
        request: Request.empty(),
        answers: AnswerList(emptyList()),
      );
}

extension ThreadX on Thread {
  Option<ValueFailure<dynamic>> get failureOption {
    return request.failureOption.andThen(answers
        .getOrCrash()
        .map((answer) => answer.failureOption)
        .filter((o) => o.isSome())
        .getOrElse(0, (_) => none()));
  }
}
