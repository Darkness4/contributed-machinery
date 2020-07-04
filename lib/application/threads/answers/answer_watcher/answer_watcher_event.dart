part of 'answer_watcher_bloc.dart';

@freezed
abstract class AnswerWatcherEvent with _$AnswerWatcherEvent {
  const factory AnswerWatcherEvent.watchAllByThreadStarted(Thread thread) =
      _WatchAllStarted;
  const factory AnswerWatcherEvent.answersReceived(
      Either<AnswerFailure, IList<Answer>> failureOrAnswers) = _AnswersReceived;
}
