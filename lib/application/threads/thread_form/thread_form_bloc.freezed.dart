// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'thread_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ThreadFormEventTearOff {
  const _$ThreadFormEventTearOff();

  _Initialized initialized(Option<Thread> initialThreadOption) {
    return _Initialized(
      initialThreadOption,
    );
  }

  _TitleChanged titleChanged(String titleStr) {
    return _TitleChanged(
      titleStr,
    );
  }

  _ContentChanged contentChanged(String contentStr) {
    return _ContentChanged(
      contentStr,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

// ignore: unused_element
const $ThreadFormEvent = _$ThreadFormEventTearOff();

mixin _$ThreadFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Thread> initialThreadOption),
    @required Result titleChanged(String titleStr),
    @required Result contentChanged(String contentStr),
    @required Result saved(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Thread> initialThreadOption),
    Result titleChanged(String titleStr),
    Result contentChanged(String contentStr),
    Result saved(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result contentChanged(_ContentChanged value),
    @required Result saved(_Saved value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result contentChanged(_ContentChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  });
}

abstract class $ThreadFormEventCopyWith<$Res> {
  factory $ThreadFormEventCopyWith(
          ThreadFormEvent value, $Res Function(ThreadFormEvent) then) =
      _$ThreadFormEventCopyWithImpl<$Res>;
}

class _$ThreadFormEventCopyWithImpl<$Res>
    implements $ThreadFormEventCopyWith<$Res> {
  _$ThreadFormEventCopyWithImpl(this._value, this._then);

  final ThreadFormEvent _value;
  // ignore: unused_field
  final $Res Function(ThreadFormEvent) _then;
}

abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Thread> initialThreadOption});
}

class __$InitializedCopyWithImpl<$Res>
    extends _$ThreadFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object initialThreadOption = freezed,
  }) {
    return _then(_Initialized(
      initialThreadOption == freezed
          ? _value.initialThreadOption
          : initialThreadOption as Option<Thread>,
    ));
  }
}

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialThreadOption)
      : assert(initialThreadOption != null);

  @override
  final Option<Thread> initialThreadOption;

  @override
  String toString() {
    return 'ThreadFormEvent.initialized(initialThreadOption: $initialThreadOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialThreadOption, initialThreadOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialThreadOption, initialThreadOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialThreadOption);

  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Thread> initialThreadOption),
    @required Result titleChanged(String titleStr),
    @required Result contentChanged(String contentStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(contentChanged != null);
    assert(saved != null);
    return initialized(initialThreadOption);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Thread> initialThreadOption),
    Result titleChanged(String titleStr),
    Result contentChanged(String contentStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initialized != null) {
      return initialized(initialThreadOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result contentChanged(_ContentChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(contentChanged != null);
    assert(saved != null);
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
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

abstract class _Initialized implements ThreadFormEvent {
  const factory _Initialized(Option<Thread> initialThreadOption) =
      _$_Initialized;

  Option<Thread> get initialThreadOption;
  _$InitializedCopyWith<_Initialized> get copyWith;
}

abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String titleStr});
}

class __$TitleChangedCopyWithImpl<$Res>
    extends _$ThreadFormEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object titleStr = freezed,
  }) {
    return _then(_TitleChanged(
      titleStr == freezed ? _value.titleStr : titleStr as String,
    ));
  }
}

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.titleStr) : assert(titleStr != null);

  @override
  final String titleStr;

  @override
  String toString() {
    return 'ThreadFormEvent.titleChanged(titleStr: $titleStr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TitleChanged &&
            (identical(other.titleStr, titleStr) ||
                const DeepCollectionEquality()
                    .equals(other.titleStr, titleStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(titleStr);

  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Thread> initialThreadOption),
    @required Result titleChanged(String titleStr),
    @required Result contentChanged(String contentStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(contentChanged != null);
    assert(saved != null);
    return titleChanged(titleStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Thread> initialThreadOption),
    Result titleChanged(String titleStr),
    Result contentChanged(String contentStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(titleStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result contentChanged(_ContentChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(contentChanged != null);
    assert(saved != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
    Result contentChanged(_ContentChanged value),
    Result saved(_Saved value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements ThreadFormEvent {
  const factory _TitleChanged(String titleStr) = _$_TitleChanged;

  String get titleStr;
  _$TitleChangedCopyWith<_TitleChanged> get copyWith;
}

abstract class _$ContentChangedCopyWith<$Res> {
  factory _$ContentChangedCopyWith(
          _ContentChanged value, $Res Function(_ContentChanged) then) =
      __$ContentChangedCopyWithImpl<$Res>;
  $Res call({String contentStr});
}

class __$ContentChangedCopyWithImpl<$Res>
    extends _$ThreadFormEventCopyWithImpl<$Res>
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
    return 'ThreadFormEvent.contentChanged(contentStr: $contentStr)';
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
    @required Result initialized(Option<Thread> initialThreadOption),
    @required Result titleChanged(String titleStr),
    @required Result contentChanged(String contentStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(contentChanged != null);
    assert(saved != null);
    return contentChanged(contentStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Thread> initialThreadOption),
    Result titleChanged(String titleStr),
    Result contentChanged(String contentStr),
    Result saved(),
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
    @required Result titleChanged(_TitleChanged value),
    @required Result contentChanged(_ContentChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(contentChanged != null);
    assert(saved != null);
    return contentChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
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

abstract class _ContentChanged implements ThreadFormEvent {
  const factory _ContentChanged(String contentStr) = _$_ContentChanged;

  String get contentStr;
  _$ContentChangedCopyWith<_ContentChanged> get copyWith;
}

abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

class __$SavedCopyWithImpl<$Res> extends _$ThreadFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'ThreadFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initialized(Option<Thread> initialThreadOption),
    @required Result titleChanged(String titleStr),
    @required Result contentChanged(String contentStr),
    @required Result saved(),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(contentChanged != null);
    assert(saved != null);
    return saved();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initialized(Option<Thread> initialThreadOption),
    Result titleChanged(String titleStr),
    Result contentChanged(String contentStr),
    Result saved(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initialized(_Initialized value),
    @required Result titleChanged(_TitleChanged value),
    @required Result contentChanged(_ContentChanged value),
    @required Result saved(_Saved value),
  }) {
    assert(initialized != null);
    assert(titleChanged != null);
    assert(contentChanged != null);
    assert(saved != null);
    return saved(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initialized(_Initialized value),
    Result titleChanged(_TitleChanged value),
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

abstract class _Saved implements ThreadFormEvent {
  const factory _Saved() = _$_Saved;
}

class _$ThreadFormStateTearOff {
  const _$ThreadFormStateTearOff();

  _ThreadFormState call(
      {@required
          Thread thread,
      @required
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<ThreadFailure, Unit>> saveFailureOrSuccessOption}) {
    return _ThreadFormState(
      thread: thread,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

// ignore: unused_element
const $ThreadFormState = _$ThreadFormStateTearOff();

mixin _$ThreadFormState {
  Thread get thread;
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
  Option<Either<ThreadFailure, Unit>> get saveFailureOrSuccessOption;

  $ThreadFormStateCopyWith<ThreadFormState> get copyWith;
}

abstract class $ThreadFormStateCopyWith<$Res> {
  factory $ThreadFormStateCopyWith(
          ThreadFormState value, $Res Function(ThreadFormState) then) =
      _$ThreadFormStateCopyWithImpl<$Res>;
  $Res call(
      {Thread thread,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<ThreadFailure, Unit>> saveFailureOrSuccessOption});

  $ThreadCopyWith<$Res> get thread;
}

class _$ThreadFormStateCopyWithImpl<$Res>
    implements $ThreadFormStateCopyWith<$Res> {
  _$ThreadFormStateCopyWithImpl(this._value, this._then);

  final ThreadFormState _value;
  // ignore: unused_field
  final $Res Function(ThreadFormState) _then;

  @override
  $Res call({
    Object thread = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      thread: thread == freezed ? _value.thread : thread as Thread,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ThreadFailure, Unit>>,
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

abstract class _$ThreadFormStateCopyWith<$Res>
    implements $ThreadFormStateCopyWith<$Res> {
  factory _$ThreadFormStateCopyWith(
          _ThreadFormState value, $Res Function(_ThreadFormState) then) =
      __$ThreadFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Thread thread,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<ThreadFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $ThreadCopyWith<$Res> get thread;
}

class __$ThreadFormStateCopyWithImpl<$Res>
    extends _$ThreadFormStateCopyWithImpl<$Res>
    implements _$ThreadFormStateCopyWith<$Res> {
  __$ThreadFormStateCopyWithImpl(
      _ThreadFormState _value, $Res Function(_ThreadFormState) _then)
      : super(_value, (v) => _then(v as _ThreadFormState));

  @override
  _ThreadFormState get _value => super._value as _ThreadFormState;

  @override
  $Res call({
    Object thread = freezed,
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_ThreadFormState(
      thread: thread == freezed ? _value.thread : thread as Thread,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<ThreadFailure, Unit>>,
    ));
  }
}

class _$_ThreadFormState implements _ThreadFormState {
  const _$_ThreadFormState(
      {@required this.thread,
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(thread != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Thread thread;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<ThreadFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'ThreadFormState(thread: $thread, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThreadFormState &&
            (identical(other.thread, thread) ||
                const DeepCollectionEquality().equals(other.thread, thread)) &&
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
      const DeepCollectionEquality().hash(thread) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$ThreadFormStateCopyWith<_ThreadFormState> get copyWith =>
      __$ThreadFormStateCopyWithImpl<_ThreadFormState>(this, _$identity);
}

abstract class _ThreadFormState implements ThreadFormState {
  const factory _ThreadFormState(
          {@required
              Thread thread,
          @required
              bool showErrorMessages,
          @required
              bool isEditing,
          @required
              bool isSaving,
          @required
              Option<Either<ThreadFailure, Unit>> saveFailureOrSuccessOption}) =
      _$_ThreadFormState;

  @override
  Thread get thread;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<ThreadFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$ThreadFormStateCopyWith<_ThreadFormState> get copyWith;
}
