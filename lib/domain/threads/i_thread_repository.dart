import 'package:dartz/dartz.dart';

import 'thread.dart';
import 'thread_failure.dart';

abstract class IThreadRepository {
  Stream<Either<ThreadFailure, IList<Thread>>> watchAll();
  Future<Either<ThreadFailure, Unit>> create(Thread thread);
  Future<Either<ThreadFailure, Unit>> update(Thread thread);
  Future<Either<ThreadFailure, Unit>> delete(Thread thread);
}
