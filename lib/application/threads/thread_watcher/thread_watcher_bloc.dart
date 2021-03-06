import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:contributed_machinery/domain/threads/i_thread_repository.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/domain/threads/thread_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'thread_watcher_event.dart';
part 'thread_watcher_state.dart';

part 'thread_watcher_bloc.freezed.dart';

@injectable
class ThreadWatcherBloc extends Bloc<ThreadWatcherEvent, ThreadWatcherState> {
  final IThreadRepository _threadRepository;

  ThreadWatcherBloc(this._threadRepository)
      : super(const ThreadWatcherState.initial());

  StreamSubscription<Either<ThreadFailure, IList<Thread>>>
      _threadStreamSubscription;

  @override
  Stream<ThreadWatcherState> mapEventToState(
    ThreadWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const ThreadWatcherState.loadInProgress();
        await _threadStreamSubscription?.cancel();
        _threadStreamSubscription = _threadRepository.watchAll().listen(
            (threads) => add(ThreadWatcherEvent.threadsReceived(threads)));
      },
      threadsReceived: (e) async* {
        yield e.failureOrThreads.fold(
          (f) => ThreadWatcherState.loadFailure(f),
          (threads) => ThreadWatcherState.loadSuccess(threads),
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
