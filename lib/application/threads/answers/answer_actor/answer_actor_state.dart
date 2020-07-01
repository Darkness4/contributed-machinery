part of 'answer_actor_bloc.dart';

@freezed
abstract class AnswerActorState with _$AnswerActorState {
  const factory AnswerActorState.initial() = Initial;
  const factory AnswerActorState.actionInProgress() = ActionInProgress;
  const factory AnswerActorState.deleteFailure(AnswerFailure failure) =
      DeleteFailure;
  const factory AnswerActorState.deleteSuccess() = DeleteSuccess;
}
