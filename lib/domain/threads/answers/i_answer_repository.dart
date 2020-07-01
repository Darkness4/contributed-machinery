import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:kt_dart/collection.dart';

import 'answer.dart';
import 'answer_failure.dart';

abstract class IAnswerRepository {
  Stream<Either<AnswerFailure, KtList<Answer>>> watchAllByThread(Thread thread);
  Future<Either<AnswerFailure, Unit>> createByThread(Answer answer,
      {@required Thread thread});
  Future<Either<AnswerFailure, Unit>> updateByThread(Answer answer,
      {@required Thread thread});
  Future<Either<AnswerFailure, Unit>> deleteByThread(Answer answer,
      {@required Thread thread});
}
