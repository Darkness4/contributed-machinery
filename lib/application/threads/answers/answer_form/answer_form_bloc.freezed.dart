// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'answer_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AnswerFormEventTearOff {
  const _$AnswerFormEventTearOff();

  _Initialized initialized(Option<Answer> initialAnswerOption) {
    return _Initialized(
      initialAnswerOption,
    );
  }

  _ContentChanged contentChanged(String contentStr) {
    return _ContentChanged(
      contentStr,
    );
  }

  _Saved saved({@required Thread thread}) {
    return _Saved(
      thread: thread,
    );
  }
}

// ignore: unused_element
const $AnswerFormEvent = _$AnswerFormEventTearOff();

mixin _$AnswerFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Answer> initialAnswerOption),
    @required Result contentChanged(String contentStr),
    @required Result saved(Thread thread),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Answer> initialAnswerOption),
    Result contentChanged(String contentStr),
    Result saved(Thread thread),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result contentChanged(_ContentChanged value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result contentChanged(_ContentChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

abstract class $AnswerFormEventCopyWith<$Res> {
  factory $AnswerFormEventCopyWith(
          AnswerFormEvent value, $Res Function(AnswerFormEvent) then) =
      _$AnswerFormEventCopyWithImpl<$Res>;
}

class _$AnswerFormEventCopyWithImpl<$Res>
    implements $AnswerFormEventCopyWith<$Res> {
  _$AnswerFormEventCopyWithImpl(this._value, this._then);

  final AnswerFormEvent _value;
  // ignore: unused_field
  final $Res Function(AnswerFormEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Answer> initialAnswerOption});
}

class __$InitializedCopyWithImpl<$Res>
    extends _$AnswerFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialAnswerOption = freezed,
  }) {
    return _then(_Initialized(
      initialAnswerOption == freezed
          ? _value.initialAnswerOption
          : initialAnswerOption as Option<Answer>,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialAnswerOption)
      : assert(initialAnswerOption != null);

  @override
  final Option<Answer> initialAnswerOption;

  @override
  String toString() {
    return 'AnswerFormEvent.initialized(initialAnswerOption: $initialAnswerOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialAnswerOption, initialAnswerOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialAnswerOption, initialAnswerOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialAnswerOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Answer> initialAnswerOption),
    @required Result contentChanged(String contentStr),
    @required Result saved(Thread thread),
  }) {
    assert(initialized != null);
    assert(contentChanged != null);
    assert(saved != null);
    return initialized(initialAnswerOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Answer> initialAnswerOption),
    Result contentChanged(String contentStr),
    Result saved(Thread thread),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialAnswerOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result contentChanged(_ContentChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(contentChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result contentChanged(_ContentChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements AnswerFormEvent {
  const factory _Initialized(Option<Answer> initialAnswerOption) =
      _$_Initialized;

  Option<Answer> get initialAnswerOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$ContentChangedCopyWith<$Res> {
  factory _$ContentChangedCopyWith(
          _ContentChanged value, $Res Function(_ContentChanged) then) =
      __$ContentChangedCopyWithImpl<$Res>;
  $Res call({String contentStr});
}

class __$ContentChangedCopyWithImpl<$Res>
    extends _$AnswerFormEventCopyWithImpl<$Res>
    implements _$ContentChangedCopyWith<$Res> {
  __$ContentChangedCopyWithImpl(
      _ContentChanged _value, $Res Function(_ContentChanged) _then)
      : super(_value, (v) => _then(v as _ContentChanged));

  @override
  _ContentChanged get _value => super._value as _ContentChanged;

  @override
  $Res call({
    Object contentStr = freezed,
  }) {
    return _then(_ContentChanged(
      contentStr == freezed ? _value.contentStr : contentStr as String,
    ));
  }
}

class _$_ContentChanged implements _ContentChanged {
  const _$_ContentChanged(this.contentStr) : assert(contentStr != null);

  @override
  final String contentStr;

  @override
  String toString() {
    return 'AnswerFormEvent.contentChanged(contentStr: $contentStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ContentChanged &&
            (identical(other.contentStr, contentStr) ||
                const DeepCollectionEquality()
                    .equals(other.contentStr, contentStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(contentStr);

  @override
  _$ContentChangedCopyWith<_ContentChanged> get copyWith =>
      __$ContentChangedCopyWithImpl<_ContentChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Answer> initialAnswerOption),
    @required Result contentChanged(String contentStr),
    @required Result saved(Thread thread),
  }) {
    assert(initialized != null);
    assert(contentChanged != null);
    assert(saved != null);
    return contentChanged(contentStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Answer> initialAnswerOption),
    Result contentChanged(String contentStr),
    Result saved(Thread thread),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (contentChanged != null) {
      return contentChanged(contentStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result contentChanged(_ContentChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(contentChanged != null);
    assert(saved != null);
    return contentChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result contentChanged(_ContentChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (contentChanged != null) {
      return contentChanged(this);
    }
    return orElse();
  }
}

abstract class _ContentChanged implements AnswerFormEvent {
  const factory _ContentChanged(String contentStr) = _$_ContentChanged;

  String get contentStr;
  _$ContentChangedCopyWith<_ContentChanged> get copyWith;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
  $Res call({Thread thread});

  $ThreadCopyWith<$Res> get thread;
}

class __$SavedCopyWithImpl<$Res> extends _$AnswerFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;

  @override
  $Res call({
    Object thread = freezed,
  }) {
    return _then(_Saved(
      thread: thread == freezed ? _value.thread : thread as Thread,
    ));
  }

  @override
  $ThreadCopyWith<$Res> get thread {
    if (_value.thread == null) {
      return null;
    }
    return $ThreadCopyWith<$Res>(_value.thread, (value) {
      return _then(_value.copyWith(thread: value));
    });
  }
}

class _$_Saved implements _Saved {
  const _$_Saved({@required this.thread}) : assert(thread != null);

  @override
  final Thread thread;

  @override
  String toString() {
    return 'AnswerFormEvent.saved(thread: $thread)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Saved &&
            (identical(other.thread, thread) ||
                const DeepCollectionEquality().equals(other.thread, thread)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(thread);

  @override
  _$SavedCopyWith<_Saved> get copyWith =>
      __$SavedCopyWithImpl<_Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Answer> initialAnswerOption),
    @required Result contentChanged(String contentStr),
    @required Result saved(Thread thread),
  }) {
    assert(initialized != null);
    assert(contentChanged != null);
    assert(saved != null);
    return saved(thread);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Answer> initialAnswerOption),
    Result contentChanged(String contentStr),
    Result saved(Thread thread),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(thread);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result contentChanged(_ContentChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(contentChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result contentChanged(_ContentChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements AnswerFormEvent {
  const factory _Saved({@required Thread thread}) = _$_Saved;

  Thread get thread;
  _$SavedCopyWith<_Saved> get copyWith;
}

class _$AnswerFormStateTearOff {
  const _$AnswerFormStateTearOff();

  _AnswerFormState call(
      {@required
          Answer answer,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<AnswerFailure, Unit>> saveFailureOrSuccessOption}) {
    return _AnswerFormState(
      answer: answer,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $AnswerFormState = _$AnswerFormStateTearOff();

mixin _$AnswerFormState {
  Answer get answer;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<AnswerFailure, Unit>> get saveFailureOrSuccessOption;

  $AnswerFormStateCopyWith<AnswerFormState> get copyWith;
}

abstract class $AnswerFormStateCopyWith<$Res> {
  factory $AnswerFormStateCopyWith(
          AnswerFormState value, $Res Function(AnswerFormState) then) =
      _$AnswerFormStateCopyWithImpl<$Res>;
  $Res call(
      {Answer answer,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<AnswerFailure, Unit>> saveFailureOrSuccessOption});

  $AnswerCopyWith<$Res> get answer;
}

class _$AnswerFormStateCopyWithImpl<$Res>
    implements $AnswerFormStateCopyWith<$Res> {
  _$AnswerFormStateCopyWithImpl(this._value, this._then);

  final AnswerFormState _value;
  // ignore: unused_field
  final $Res Function(AnswerFormState) _then;

  @override
  $Res call({
    Object answer = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      answer: answer == freezed ? _value.answer : answer as Answer,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<AnswerFailure, Unit>>,
    ));
  }

  @override
  $AnswerCopyWith<$Res> get answer {
    if (_value.answer == null) {
      return null;
    }
    return $AnswerCopyWith<$Res>(_value.answer, (value) {
      return _then(_value.copyWith(answer: value));
    });
  }
}

abstract class _$AnswerFormStateCopyWith<$Res>
    implements $AnswerFormStateCopyWith<$Res> {
  factory _$AnswerFormStateCopyWith(
          _AnswerFormState value, $Res Function(_AnswerFormState) then) =
      __$AnswerFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Answer answer,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<AnswerFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $AnswerCopyWith<$Res> get answer;
}

class __$AnswerFormStateCopyWithImpl<$Res>
    extends _$AnswerFormStateCopyWithImpl<$Res>
    implements _$AnswerFormStateCopyWith<$Res> {
  __$AnswerFormStateCopyWithImpl(
      _AnswerFormState _value, $Res Function(_AnswerFormState) _then)
      : super(_value, (v) => _then(v as _AnswerFormState));

  @override
  _AnswerFormState get _value => super._value as _AnswerFormState;

  @override
  $Res call({
    Object answer = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_AnswerFormState(
      answer: answer == freezed ? _value.answer : answer as Answer,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<AnswerFailure, Unit>>,
    ));
  }
}

class _$_AnswerFormState implements _AnswerFormState {
  const _$_AnswerFormState(
      {@required this.answer,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(answer != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Answer answer;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<AnswerFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'AnswerFormState(answer: $answer, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnswerFormState &&
            (identical(other.answer, answer) ||
                const DeepCollectionEquality().equals(other.answer, answer)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(answer) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$AnswerFormStateCopyWith<_AnswerFormState> get copyWith =>
      __$AnswerFormStateCopyWithImpl<_AnswerFormState>(this, _$identity);
}

abstract class _AnswerFormState implements AnswerFormState {
  const factory _AnswerFormState(
          {@required
              Answer answer,
          @required
              bool showErrorMessages,
          @required
              bool isEditing,
          @required
              bool isSaving,
          @required
              Option<Either<AnswerFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_AnswerFormState;

  @override
  Answer get answer;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<AnswerFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$AnswerFormStateCopyWith<_AnswerFormState> get copyWith;
}
