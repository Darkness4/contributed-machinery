import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:contributed_machinery/domain/threads/i_thread_repository.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/domain/threads/thread_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'thread_actor_event.dart';
part 'thread_actor_state.dart';

part 'thread_actor_bloc.freezed.dart';

@injectable
class ThreadActorBloc extends Bloc<ThreadActorEvent, ThreadActorState> {
  final IThreadRepository _threadRepository;

  ThreadActorBloc(this._threadRepository)
      : super(const ThreadActorState.initial());

  @override
  Stream<ThreadActorState> mapEventToState(
    ThreadActorEvent event,
  ) async* {
    // We have only one ThreadActorEvent - there's no union type
    yield const ThreadActorState.actionInProgress();
    final possibleFailure = await _threadRepository.delete(event.thread);
    yield possibleFailure.fold(
      (f) => ThreadActorState.deleteFailure(f),
      // Yielding unchanged state - nothing will be emitted from the BLoC
      (_) => const ThreadActorState.deleteSuccess(),
    );
  }
}
