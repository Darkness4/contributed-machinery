import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'answer.dart';
import 'answer_failure.dart';

abstract class IAnswerRepository {
  Stream<Either<AnswerFailure, KtList<Answer>>> watchAllByThread(Thread thread);
  Future<Either<AnswerFailure, Unit>> create(Answer thread);
  Future<Either<AnswerFailure, Unit>> update(Answer thread);
  Future<Either<AnswerFailure, Unit>> delete(Answer thread);
}
