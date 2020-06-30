import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

import 'thread.dart';
import 'thread_failure.dart';

abstract class IThreadRepository {
  Stream<Either<ThreadFailure, KtList<Thread>>> watchAll();
  Future<Either<ThreadFailure, Unit>> create(Thread thread);
  Future<Either<ThreadFailure, Unit>> update(Thread thread);
  Future<Either<ThreadFailure, Unit>> delete(Thread thread);
}
