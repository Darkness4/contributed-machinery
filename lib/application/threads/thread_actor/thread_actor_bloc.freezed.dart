// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'thread_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ThreadActorEventTearOff {
  const _$ThreadActorEventTearOff();

  _Deleted deleted(Thread thread) {
    return _Deleted(
      thread,
    );
  }
}

// ignore: unused_element
const $ThreadActorEvent = _$ThreadActorEventTearOff();

mixin _$ThreadActorEvent {
  Thread get thread;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Thread thread),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Thread thread),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    @required Result orElse(),
  });

  $ThreadActorEventCopyWith<ThreadActorEvent> get copyWith;
}

abstract class $ThreadActorEventCopyWith<$Res> {
  factory $ThreadActorEventCopyWith(
          ThreadActorEvent value, $Res Function(ThreadActorEvent) then) =
      _$ThreadActorEventCopyWithImpl<$Res>;
  $Res call({Thread thread});

  $ThreadCopyWith<$Res> get thread;
}

class _$ThreadActorEventCopyWithImpl<$Res>
    implements $ThreadActorEventCopyWith<$Res> {
  _$ThreadActorEventCopyWithImpl(this._value, this._then);

  final ThreadActorEvent _value;
  // ignore: unused_field
  final $Res Function(ThreadActorEvent) _then;

  @override
  $Res call({
    Object thread = freezed,
  }) {
    return _then(_value.copyWith(
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

abstract class _$DeletedCopyWith<$Res>
    implements $ThreadActorEventCopyWith<$Res> {
  factory _$DeletedCopyWith(_Deleted value, $Res Function(_Deleted) then) =
      __$DeletedCopyWithImpl<$Res>;
  @override
  $Res call({Thread thread});

  @override
  $ThreadCopyWith<$Res> get thread;
}

class __$DeletedCopyWithImpl<$Res> extends _$ThreadActorEventCopyWithImpl<$Res>
    implements _$DeletedCopyWith<$Res> {
  __$DeletedCopyWithImpl(_Deleted _value, $Res Function(_Deleted) _then)
      : super(_value, (v) => _then(v as _Deleted));

  @override
  _Deleted get _value => super._value as _Deleted;

  @override
  $Res call({
    Object thread = freezed,
  }) {
    return _then(_Deleted(
      thread == freezed ? _value.thread : thread as Thread,
    ));
  }
}

class _$_Deleted implements _Deleted {
  const _$_Deleted(this.thread) : assert(thread != null);

  @override
  final Thread thread;

  @override
  String toString() {
    return 'ThreadActorEvent.deleted(thread: $thread)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Deleted &&
            (identical(other.thread, thread) ||
                const DeepCollectionEquality().equals(other.thread, thread)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(thread);

  @override
  _$DeletedCopyWith<_Deleted> get copyWith =>
      __$DeletedCopyWithImpl<_Deleted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result deleted(Thread thread),
  }) {
    assert(deleted != null);
    return deleted(thread);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result deleted(Thread thread),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(thread);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result deleted(_Deleted value),
  }) {
    assert(deleted != null);
    return deleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result deleted(_Deleted value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleted != null) {
      return deleted(this);
    }
    return orElse();
  }
}

abstract class _Deleted implements ThreadActorEvent {
  const factory _Deleted(Thread thread) = _$_Deleted;

  @override
  Thread get thread;
  @override
  _$DeletedCopyWith<_Deleted> get copyWith;
}

class _$ThreadActorStateTearOff {
  const _$ThreadActorStateTearOff();

  Initial initial() {
    return const Initial();
  }

  ActionInProgress actionInProgress() {
    return const ActionInProgress();
  }

  DeleteFailure deleteFailure(ThreadFailure failure) {
    return DeleteFailure(
      failure,
    );
  }

  DeleteSuccess deleteSuccess() {
    return const DeleteSuccess();
  }
}

// ignore: unused_element
const $ThreadActorState = _$ThreadActorStateTearOff();

mixin _$ThreadActorState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(ThreadFailure failure),
    @required Result deleteSuccess(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(ThreadFailure failure),
    Result deleteSuccess(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result actionInProgress(ActionInProgress value),
    Result deleteFailure(DeleteFailure value),
    Result deleteSuccess(DeleteSuccess value),
    @required Result orElse(),
  });
}

abstract class $ThreadActorStateCopyWith<$Res> {
  factory $ThreadActorStateCopyWith(
          ThreadActorState value, $Res Function(ThreadActorState) then) =
      _$ThreadActorStateCopyWithImpl<$Res>;
}

class _$ThreadActorStateCopyWithImpl<$Res>
    implements $ThreadActorStateCopyWith<$Res> {
  _$ThreadActorStateCopyWithImpl(this._value, this._then);

  final ThreadActorState _value;
  // ignore: unused_field
  final $Res Function(ThreadActorState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$ThreadActorStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ThreadActorState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(ThreadFailure failure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(ThreadFailure failure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result actionInProgress(ActionInProgress value),
    Result deleteFailure(DeleteFailure value),
    Result deleteSuccess(DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ThreadActorState {
  const factory Initial() = _$Initial;
}

abstract class $ActionInProgressCopyWith<$Res> {
  factory $ActionInProgressCopyWith(
          ActionInProgress value, $Res Function(ActionInProgress) then) =
      _$ActionInProgressCopyWithImpl<$Res>;
}

class _$ActionInProgressCopyWithImpl<$Res>
    extends _$ThreadActorStateCopyWithImpl<$Res>
    implements $ActionInProgressCopyWith<$Res> {
  _$ActionInProgressCopyWithImpl(
      ActionInProgress _value, $Res Function(ActionInProgress) _then)
      : super(_value, (v) => _then(v as ActionInProgress));

  @override
  ActionInProgress get _value => super._value as ActionInProgress;
}

class _$ActionInProgress implements ActionInProgress {
  const _$ActionInProgress();

  @override
  String toString() {
    return 'ThreadActorState.actionInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ActionInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(ThreadFailure failure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return actionInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(ThreadFailure failure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return actionInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result actionInProgress(ActionInProgress value),
    Result deleteFailure(DeleteFailure value),
    Result deleteSuccess(DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (actionInProgress != null) {
      return actionInProgress(this);
    }
    return orElse();
  }
}

abstract class ActionInProgress implements ThreadActorState {
  const factory ActionInProgress() = _$ActionInProgress;
}

abstract class $DeleteFailureCopyWith<$Res> {
  factory $DeleteFailureCopyWith(
          DeleteFailure value, $Res Function(DeleteFailure) then) =
      _$DeleteFailureCopyWithImpl<$Res>;
  $Res call({ThreadFailure failure});

  $ThreadFailureCopyWith<$Res> get failure;
}

class _$DeleteFailureCopyWithImpl<$Res>
    extends _$ThreadActorStateCopyWithImpl<$Res>
    implements $DeleteFailureCopyWith<$Res> {
  _$DeleteFailureCopyWithImpl(
      DeleteFailure _value, $Res Function(DeleteFailure) _then)
      : super(_value, (v) => _then(v as DeleteFailure));

  @override
  DeleteFailure get _value => super._value as DeleteFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(DeleteFailure(
      failure == freezed ? _value.failure : failure as ThreadFailure,
    ));
  }

  @override
  $ThreadFailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $ThreadFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

class _$DeleteFailure implements DeleteFailure {
  const _$DeleteFailure(this.failure) : assert(failure != null);

  @override
  final ThreadFailure failure;

  @override
  String toString() {
    return 'ThreadActorState.deleteFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DeleteFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  $DeleteFailureCopyWith<DeleteFailure> get copyWith =>
      _$DeleteFailureCopyWithImpl<DeleteFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(ThreadFailure failure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(ThreadFailure failure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result actionInProgress(ActionInProgress value),
    Result deleteFailure(DeleteFailure value),
    Result deleteSuccess(DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteFailure != null) {
      return deleteFailure(this);
    }
    return orElse();
  }
}

abstract class DeleteFailure implements ThreadActorState {
  const factory DeleteFailure(ThreadFailure failure) = _$DeleteFailure;

  ThreadFailure get failure;
  $DeleteFailureCopyWith<DeleteFailure> get copyWith;
}

abstract class $DeleteSuccessCopyWith<$Res> {
  factory $DeleteSuccessCopyWith(
          DeleteSuccess value, $Res Function(DeleteSuccess) then) =
      _$DeleteSuccessCopyWithImpl<$Res>;
}

class _$DeleteSuccessCopyWithImpl<$Res>
    extends _$ThreadActorStateCopyWithImpl<$Res>
    implements $DeleteSuccessCopyWith<$Res> {
  _$DeleteSuccessCopyWithImpl(
      DeleteSuccess _value, $Res Function(DeleteSuccess) _then)
      : super(_value, (v) => _then(v as DeleteSuccess));

  @override
  DeleteSuccess get _value => super._value as DeleteSuccess;
}

class _$DeleteSuccess implements DeleteSuccess {
  const _$DeleteSuccess();

  @override
  String toString() {
    return 'ThreadActorState.deleteSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DeleteSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result actionInProgress(),
    @required Result deleteFailure(ThreadFailure failure),
    @required Result deleteSuccess(),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteSuccess();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result actionInProgress(),
    Result deleteFailure(ThreadFailure failure),
    Result deleteSuccess(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result actionInProgress(ActionInProgress value),
    @required Result deleteFailure(DeleteFailure value),
    @required Result deleteSuccess(DeleteSuccess value),
  }) {
    assert(initial != null);
    assert(actionInProgress != null);
    assert(deleteFailure != null);
    assert(deleteSuccess != null);
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result actionInProgress(ActionInProgress value),
    Result deleteFailure(DeleteFailure value),
    Result deleteSuccess(DeleteSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class DeleteSuccess implements ThreadActorState {
  const factory DeleteSuccess() = _$DeleteSuccess;
}
