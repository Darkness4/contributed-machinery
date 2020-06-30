part of 'thread_form_bloc.dart';

@freezed
abstract class ThreadFormState with _$ThreadFormState {
  const factory ThreadFormState({
    // Unlike in SignInFormState, here we have an entity which we can readily use for validation
    // instead of storing individual fields.
    @required Thread thread,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaving,
    @required Option<Either<ThreadFailure, Unit>> saveFailureOrSuccessOption,
  }) = _ThreadFormState;

  factory ThreadFormState.initial() => ThreadFormState(
        thread: Thread.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
