import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:contributed_machinery/domain/threads/answers/answer.dart';
import 'package:contributed_machinery/domain/threads/answers/answer_failure.dart';
import 'package:contributed_machinery/domain/threads/answers/i_answer_repository.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/infrastructure/core/firestore_helpers.dart';
import 'package:contributed_machinery/injection.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import 'answer_dtos.dart';

@prod
@LazySingleton(as: IAnswerRepository)
class AnswerRepository implements IAnswerRepository {
  final FirebaseFirestore _firestore;

  AnswerRepository(this._firestore);

  @override
  Future<Either<AnswerFailure, Unit>> createByThread(Answer answer,
      {@required Thread thread}) async {
    try {
      final threadDoc = _firestore.threadCollection.doc(thread.id.getOrCrash());
      final answerDto = AnswerDto.fromDomain(answer);

      await threadDoc.answerCollection
          .doc(answerDto.id)
          .set(answerDto.toJson());

      return right(unit);
    } on PlatformException catch (e, s) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const AnswerFailure.insufficientPermissions());
      } else {
        getIt<FirebaseAnalytics>().logEvent(
          name: "UNEXPECTED_ERROR",
          parameters: {
            "error": e.toString(),
            "stacktrace": s.toString(),
          },
        );
        return left(AnswerFailure.unexpected(e));
      }
    }
  }

  @override
  Future<Either<AnswerFailure, Unit>> deleteByThread(Answer answer,
      {@required Thread thread}) async {
    try {
      final threadDoc = _firestore.threadCollection.doc(thread.id.getOrCrash());
      final answerId = answer.id.getOrCrash();

      await threadDoc.answerCollection.doc(answerId).delete();

      return right(unit);
    } on PlatformException catch (e, s) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const AnswerFailure.insufficientPermissions());
      } else {
        getIt<FirebaseAnalytics>().logEvent(
          name: "UNEXPECTED_ERROR",
          parameters: {
            "error": e.toString(),
            "stacktrace": s.toString(),
          },
        );
        return left(AnswerFailure.unexpected(e));
      }
    }
  }

  @override
  Future<Either<AnswerFailure, Unit>> updateByThread(Answer answer,
      {@required Thread thread}) async {
    try {
      final threadDoc = _firestore.threadCollection.doc(thread.id.getOrCrash());
      final answerDto = AnswerDto.fromDomain(answer);

      await threadDoc.answerCollection
          .doc(answerDto.id)
          .update(answerDto.toJson());

      return right(unit);
    } on PlatformException catch (e, s) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const AnswerFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const AnswerFailure.unableToUpdate());
      } else {
        getIt<FirebaseAnalytics>().logEvent(
          name: "UNEXPECTED_ERROR",
          parameters: {
            "error": e.toString(),
            "stacktrace": s.toString(),
          },
        );
        return left(AnswerFailure.unexpected(e));
      }
    }
  }

  @override
  Stream<Either<AnswerFailure, IList<Answer>>> watchAllByThread(
      Thread thread) async* {
    final threadDoc = _firestore.threadCollection.doc(thread.id.getOrCrash());

    yield* threadDoc.answerCollection
        .orderBy('published')
        .snapshots()
        .map(
          (snapshot) => right<AnswerFailure, IList<Answer>>(
            IList.from(snapshot.docs
                .map((doc) => AnswerDto.fromFirestore(doc).toDomain())),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const AnswerFailure.insufficientPermissions());
      } else {
        getIt<FirebaseAnalytics>().logEvent(
          name: "UNEXPECTED_ERROR",
          parameters: {
            "error": e.toString(),
          },
        );
        return left(AnswerFailure.unexpected(e));
      }
    });
  }
}
