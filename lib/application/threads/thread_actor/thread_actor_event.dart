part of 'thread_actor_bloc.dart';

@freezed
abstract class ThreadActorEvent with _$ThreadActorEvent {
  const factory ThreadActorEvent.deleted(Thread thread) = _Deleted;
  // If we had a functionality of completing answer right from the overview UI, "ModifyAnswer" event would go here
}
