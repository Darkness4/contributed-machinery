import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:contributed_machinery/domain/threads/i_thread_repository.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/domain/threads/thread_failure.dart';
import 'package:contributed_machinery/domain/threads/value_objects.dart';
import 'package:contributed_machinery/presentation/pages/threads/thread_form/misc/answser_presentation_classes.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'thread_form_event.dart';
part 'thread_form_state.dart';

part 'thread_form_bloc.freezed.dart';

@injectable
class ThreadFormBloc extends Bloc<ThreadFormEvent, ThreadFormState> {
  final IThreadRepository _threadRepository;

  ThreadFormBloc(this._threadRepository);

  @override
  ThreadFormState get initialState => ThreadFormState.initial();

  @override
  Stream<ThreadFormState> mapEventToState(
    ThreadFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialThreadOption.fold(
          // Yielding an unchanged state results in not emitting anything at all
          () => state,
          (initialThread) {
            return state.copyWith(
              thread: initialThread,
              isEditing: true,
            );
          },
        );
      },
      contentChanged: (e) async* {
        yield state.copyWith(
          thread: state.thread.copyWith
              .request(content: RequestContent(e.contentStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      titleChanged: (e) async* {
        yield state.copyWith(
          thread:
              state.thread.copyWith.request(title: RequestTitle(e.titleStr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      answersChanged: (e) async* {
        yield state.copyWith(
          thread: state.thread.copyWith(
            answers: AnswerList(
              e.answers.map((primitive) => primitive.toDomain()),
            ),
          ),
          saveFailureOrSuccessOption: none(),
        );
      },
      saved: (e) async* {
        Either<ThreadFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.thread.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _threadRepository.update(state.thread)
              : await _threadRepository.create(state.thread);
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
