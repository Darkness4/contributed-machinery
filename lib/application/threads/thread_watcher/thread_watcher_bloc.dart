import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:contributed_machinery/domain/threads/i_thread_repository.dart';
import 'package:contributed_machinery/domain/threads/thread.dart';
import 'package:contributed_machinery/domain/threads/thread_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';

part 'thread_watcher_event.dart';
part 'thread_watcher_state.dart';

part 'thread_watcher_bloc.freezed.dart';

@injectable
class ThreadWatcherBloc extends Bloc<ThreadWatcherEvent, ThreadWatcherState> {
  final IThreadRepository _noteRepository;

  ThreadWatcherBloc(this._noteRepository);

  StreamSubscription<Either<ThreadFailure, KtList<Thread>>>
      _noteStreamSubscription;

  @override
  ThreadWatcherState get initialState => const ThreadWatcherState.initial();

  @override
  Stream<ThreadWatcherState> mapEventToState(
    ThreadWatcherEvent event,
  ) async* {
    yield* event.map(
      watchAllStarted: (e) async* {
        yield const ThreadWatcherState.loadInProgress();
        await _noteStreamSubscription?.cancel();
        _noteStreamSubscription = _noteRepository
            .watchAll()
            .listen((notes) => add(ThreadWatcherEvent.notesReceived(notes)));
      },
      notesReceived: (e) async* {
        yield e.failureOrThreads.fold(
          (f) => ThreadWatcherState.loadFailure(f),
          (notes) => ThreadWatcherState.loadSuccess(notes),
        );
      },
    );
  }

  @override
  Future<void> close() async {
    await _noteStreamSubscription.cancel();
    return super.close();
  }
}
