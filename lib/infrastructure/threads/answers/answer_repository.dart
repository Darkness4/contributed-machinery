import 'package:contributed_machinery/domain/threads/answers/answer.dart';
import 'package:contributed_machinery/domain/threads/answers/answer_failure.dart';
import 'package:contributed_machinery/domain/threads/answers/i_answer_repository.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/infrastructure/core/firestore_helpers.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:rxdart/rxdart.dart';

import 'answer_dtos.dart';

@prod
@LazySingleton(as: IAnswerRepository)
class AnswerRepository implements IAnswerRepository {
  final Firestore _firestore;

  AnswerRepository(this._firestore);

  @override
  Future<Either<AnswerFailure, Unit>> createByThread(Answer answer,
      {@required Thread thread}) async {
    try {
      final threadDoc =
          _firestore.threadCollection.document(thread.id.getOrCrash());
      final answerDto = AnswerDto.fromDomain(answer);

      await threadDoc.answerCollection
          .document(answerDto.id)
          .setData(answerDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const AnswerFailure.insufficientPermissions());
      } else {
        return left(const AnswerFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<AnswerFailure, Unit>> deleteByThread(Answer answer,
      {@required Thread thread}) async {
    try {
      final threadDoc =
          _firestore.threadCollection.document(thread.id.getOrCrash());
      final answerId = answer.id.getOrCrash();

      await threadDoc.answerCollection.document(answerId).delete();

      return right(unit);
    } on PlatformException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const AnswerFailure.insufficientPermissions());
      } else {
        return left(const AnswerFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<AnswerFailure, Unit>> updateByThread(Answer answer,
      {@required Thread thread}) async {
    try {
      final threadDoc =
          _firestore.threadCollection.document(thread.id.getOrCrash());
      final answerDto = AnswerDto.fromDomain(answer);

      await threadDoc.answerCollection
          .document(answerDto.id)
          .updateData(answerDto.toJson());

      return right(unit);
    } on PlatformException catch (e) {
      // These error codes and messages aren't in the documentation AFAIK, experiment in the debugger to find out about them.
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const AnswerFailure.insufficientPermissions());
      } else if (e.message.contains('NOT_FOUND')) {
        return left(const AnswerFailure.unableToUpdate());
      } else {
        return left(const AnswerFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<AnswerFailure, KtList<Answer>>> watchAllByThread(
      Thread thread) async* {
    final threadDoc =
        _firestore.threadCollection.document(thread.id.getOrCrash());

    yield* threadDoc.answerCollection
        .orderBy('serverTimeStamp')
        .snapshots()
        .map(
          (snapshot) => right<AnswerFailure, KtList<Answer>>(
            snapshot.documents
                .map((doc) => AnswerDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is PlatformException && e.message.contains('PERMISSION_DENIED')) {
        return left(const AnswerFailure.insufficientPermissions());
      } else {
        // TODO: Log these unexpected errors everywhere
        return left(const AnswerFailure.unexpected());
      }
    });
  }
}
