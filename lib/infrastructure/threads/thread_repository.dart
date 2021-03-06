import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contributed_machinery/domain/threads/i_thread_repository.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/domain/threads/thread_failure.dart';
import 'package:contributed_machinery/infrastructure/core/firestore_helpers.dart';
import 'package:contributed_machinery/infrastructure/threads/thread_dtos.dart';
import 'package:contributed_machinery/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

@prod
@LazySingleton(as: IThreadRepository)
class ThreadRepository implements IThreadRepository {
  final FirebaseFirestore _firestore;

  ThreadRepository(this._firestore);

  @override
  Future<Either<ThreadFailure, Unit>> create(Thread thread) async {
    try {
      final threadDto = ThreadDto.fromDomain(thread);

      await _firestore.threadCollection
          .doc(threadDto.id)
          .set(threadDto.toJson());

      return right(unit);
    } on PlatformException catch (e, s) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ThreadFailure.insufficientPermissions());
      } else {
        getIt<FirebaseAnalytics>().logEvent(
          name: "UNEXPECTED_ERROR",
          parameters: {
            "error": e.toString(),
            "stacktrace": s.toString(),
          },
        );
        return left(ThreadFailure.unexpected(e));
      }
    }
  }

  @override
  Future<Either<ThreadFailure, Unit>> delete(Thread thread) async {
    try {
      final threadId = thread.id.getOrCrash();

      await _firestore.threadCollection.doc(threadId).delete();

      return right(unit);
    } on PlatformException catch (e, s) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ThreadFailure.insufficientPermissions());
      } else {
        getIt<FirebaseAnalytics>().logEvent(
          name: "UNEXPECTED_ERROR",
          parameters: {
            "error": e.toString(),
            "stacktrace": s.toString(),
          },
        );
        return left(ThreadFailure.unexpected(e));
      }
    }
  }

  @override
  Future<Either<ThreadFailure, Unit>> update(Thread thread) async {
    try {
      final threadDto = ThreadDto.fromDomain(thread);

      await _firestore.threadCollection
          .doc(threadDto.id)
          .update(threadDto.toJson());

      return right(unit);
    } on PlatformException catch (e, s) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const ThreadFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const ThreadFailure.unableToUpdate());
      } else {
        getIt<FirebaseAnalytics>().logEvent(
          name: "UNEXPECTED_ERROR",
          parameters: {
            "error": e.toString(),
            "stacktrace": s.toString(),
          },
        );
        return left(ThreadFailure.unexpected(e));
      }
    }
  }

  @override
  Stream<Either<ThreadFailure, IList<Thread>>> watchAll() async* {
    yield* _firestore.threadCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<ThreadFailure, IList<Thread>>(
            IList.from(snapshot.docs
                .map((doc) => ThreadDto.fromFirestore(doc).toDomain())),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const ThreadFailure.insufficientPermissions());
      } else {
        getIt<FirebaseAnalytics>().logEvent(
          name: "UNEXPECTED_ERROR",
          parameters: {
            "error": e.toString(),
          },
        );
        return left(ThreadFailure.unexpected(e));
      }
    });
  }
}
