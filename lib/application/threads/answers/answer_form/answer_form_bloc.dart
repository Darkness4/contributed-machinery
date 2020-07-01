import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:contributed_machinery/application/auth_bloc.dart';
import 'package:contributed_machinery/domain/threads/answers/answer.dart';
import 'package:contributed_machinery/domain/threads/answers/answer_failure.dart';
import 'package:contributed_machinery/domain/threads/answers/i_answer_repository.dart';
import 'package:contributed_machinery/domain/threads/answers/value_objects.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/domain/threads/value_objects.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'answer_form_event.dart';
part 'answer_form_state.dart';

part 'answer_form_bloc.freezed.dart';

@injectable
class AnswerFormBloc extends Bloc<AnswerFormEvent, AnswerFormState> {
  final IAnswerRepository _answerRepository;
  final AuthBloc _authBloc;

  AnswerFormBloc(this._answerRepository, this._authBloc);

  @override
  AnswerFormState get initialState => AnswerFormState.initial();

  @override
  Stream<AnswerFormState> mapEventToState(
    AnswerFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        final authState = _authBloc.state;
        final author = authState is Authenticated
            ? Author(authState.user.emailAddress.getOrCrash())
            : null;
        yield e.initialAnswerOption.fold(
          // Yielding an unchanged state results in not emitting anything at all
          () => state.copyWith.answer(author: author),
          (initialAnswer) {
            return state.copyWith(
              answer: initialAnswer,
              isEditing: true,
            );
          },
        );
      },
      contentChanged: (e) async* {
        yield state.copyWith(
          answer: state.answer.copyWith(content: AnswerContent(e.contentStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<AnswerFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.answer.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _answerRepository.updateByThread(state.answer,
                  thread: e.thread)
              : await _answerRepository.createByThread(state.answer,
                  thread: e.thread);
        }
        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
