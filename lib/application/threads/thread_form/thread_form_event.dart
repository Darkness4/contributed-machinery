part of 'thread_form_bloc.dart';

@freezed
abstract class ThreadFormEvent with _$ThreadFormEvent {
  const factory ThreadFormEvent.initialized(
      Option<Thread> initialThreadOption) = _Initialized;
  const factory ThreadFormEvent.titleChanged(String titleStr) = _TitleChanged;
  const factory ThreadFormEvent.contentChanged(String contentStr) =
      _ContentChanged;
  const factory ThreadFormEvent.answersChanged(
      KtList<AnswerPrimitive> answers) = _AnswersChanged;
  const factory ThreadFormEvent.saved() = _Saved;
}
