part of 'thread_actor_bloc.dart';

@freezed
abstract class ThreadActorState with _$ThreadActorState {
  const factory ThreadActorState.initial() = Initial;
  const factory ThreadActorState.actionInProgress() = ActionInProgress;
  const factory ThreadActorState.deleteFailure(ThreadFailure failure) =
      DeleteFailure;
  const factory ThreadActorState.deleteSuccess() = DeleteSuccess;
}
