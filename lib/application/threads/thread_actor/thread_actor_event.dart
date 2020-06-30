part of 'thread_actor_bloc.dart';

@freezed
abstract class ThreadActorEvent with _$ThreadActorEvent {
  const factory ThreadActorEvent.deleted(Thread thread) = _Deleted;
  // If we had a functionality of completing todos right from the overview UI, "ModifyTodo" event would go here
}
