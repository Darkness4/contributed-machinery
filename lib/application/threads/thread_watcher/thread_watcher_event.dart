part of 'thread_watcher_bloc.dart';

@freezed
abstract class ThreadWatcherEvent with _$ThreadWatcherEvent {
  const factory ThreadWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory ThreadWatcherEvent.threadsReceived(
          Either<ThreadFailure, KtList<Thread>> failureOrThreads) =
      _ThreadsReceived;
}
