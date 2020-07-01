part of 'answer_form_bloc.dart';

@freezed
abstract class AnswerFormEvent with _$AnswerFormEvent {
  const factory AnswerFormEvent.initialized(
      Option<Answer> initialAnswerOption) = _Initialized;
  const factory AnswerFormEvent.contentChanged(String contentStr) =
      _ContentChanged;
  const factory AnswerFormEvent.saved({@required Thread thread}) = _Saved;
  const factory AnswerFormEvent.deletedByThread(Answer answer,
      {@required Thread thread}) = _DeletedByThread;
}
