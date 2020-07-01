part of 'answer_actor_bloc.dart';

@freezed
abstract class AnswerActorEvent with _$AnswerActorEvent {
  const factory AnswerActorEvent.deletedByThread(Answer answer,
      {@required Thread thread}) = _Deleted;
  // If we had a functionality of completing answer right from the overview UI, "ModifyAnswer" event would go here
}
