import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:contributed_machinery/domain/threads/answers/answer.dart';
import 'package:contributed_machinery/domain/threads/answers/answer_failure.dart';
import 'package:contributed_machinery/domain/threads/answers/i_answer_repository.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'answer_actor_event.dart';
part 'answer_actor_state.dart';

part 'answer_actor_bloc.freezed.dart';

@injectable
class AnswerActorBloc extends Bloc<AnswerActorEvent, AnswerActorState> {
  final IAnswerRepository _answerRepository;

  AnswerActorBloc(this._answerRepository);

  @override
  AnswerActorState get initialState => const AnswerActorState.initial();

  @override
  Stream<AnswerActorState> mapEventToState(
    AnswerActorEvent event,
  ) async* {
    // We have only one AnswerActorEvent - there's no union type
    yield const AnswerActorState.actionInProgress();
    final possibleFailure = await _answerRepository.deleteByThread(event.answer,
        thread: event.thread);
    yield possibleFailure.fold(
      (f) => AnswerActorState.deleteFailure(f),
      // Yielding unchanged state - nothing will be emitted from the BLoC
      (_) => const AnswerActorState.deleteSuccess(),
    );
  }
}
