import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:contributed_machinery/domain/threads/answers/answer.dart';
import 'package:contributed_machinery/domain/threads/answers/answer_failure.dart';
import 'package:contributed_machinery/domain/threads/answers/i_answer_repository.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'answer_watcher_event.dart';
part 'answer_watcher_state.dart';

part 'answer_watcher_bloc.freezed.dart';

@injectable
class AnswerWatcherBloc extends Bloc<AnswerWatcherEvent, AnswerWatcherState> {
  final IAnswerRepository _answerRepository;

  AnswerWatcherBloc(this._answerRepository);

  StreamSubscription<Either<AnswerFailure, KtList<Answer>>>
      _threadStreamSubscription;

  @override
  AnswerWatcherState get initialState => const AnswerWatcherState.initial();

  @override
  Stream<AnswerWatcherState> mapEventToState(
    AnswerWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllByThreadStarted: (e) async* {
        yield const AnswerWatcherState.loadInProgress();
        await _threadStreamSubscription?.cancel();
        _threadStreamSubscription = _answerRepository
            .watchAllByThread(e.thread)
            .listen(
                (answers) => add(AnswerWatcherEvent.answersReceived(answers)));
      },
      answersReceived: (e) async* {
        yield e.failureOrAnswers.fold(
          (f) => AnswerWatcherState.loadFailure(f),
          (answers) => AnswerWatcherState.loadSuccess(answers),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _threadStreamSubscription?.cancel();
    return super.close();
  }
}
