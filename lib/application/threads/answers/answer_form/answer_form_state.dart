part of 'answer_form_bloc.dart';

@freezed
abstract class AnswerFormState with _$AnswerFormState {
  const factory AnswerFormState({
    // Unlike in SignInFormState, here we have an entity which we can readily use for validation
    // instead of storing individual fields.
    @required Answer answer,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required bool isDeleting,
    @required Option<Either<AnswerFailure, Unit>> saveFailureOrSuccessOption,
  }) = _AnswerFormState;

  factory AnswerFormState.initial() => AnswerFormState(
        answer: Answer.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        isDeleting: false,
        saveFailureOrSuccessOption: none(),
      );
}
