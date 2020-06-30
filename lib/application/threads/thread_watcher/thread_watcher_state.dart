part of 'thread_watcher_bloc.dart';

@freezed
abstract class ThreadWatcherState with _$ThreadWatcherState {
  const factory ThreadWatcherState.initial() = Initial;
  const factory ThreadWatcherState.loadInProgress() = DataTransferInProgress;
  const factory ThreadWatcherState.loadSuccess(KtList<Thread> threads) =
      LoadSuccess;
  const factory ThreadWatcherState.loadFailure(ThreadFailure threadFailure) =
      LoadFailure;
}
