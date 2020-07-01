part of 'answer_watcher_bloc.dart';

@freezed
abstract class AnswerWatcherState with _$AnswerWatcherState {
  const factory AnswerWatcherState.initial() = Initial;
  const factory AnswerWatcherState.loadInProgress() = DataTransferInProgress;
  const factory AnswerWatcherState.loadSuccess(KtList<Answer> answers) =
      LoadSuccess;
  const factory AnswerWatcherState.loadFailure(AnswerFailure answerFailure) =
      LoadFailure;
}
