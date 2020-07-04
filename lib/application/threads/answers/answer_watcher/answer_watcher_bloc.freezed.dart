// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'answer_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AnswerWatcherEventTearOff {
  const _$AnswerWatcherEventTearOff();

  _WatchAllStarted watchAllByThreadStarted(Thread thread) {
    return _WatchAllStarted(
      thread,
    );
  }

  _AnswersReceived answersReceived(
      Either<AnswerFailure, IList<Answer>> failureOrAnswers) {
    return _AnswersReceived(
      failureOrAnswers,
    );
  }
}

// ignore: unused_element
const $AnswerWatcherEvent = _$AnswerWatcherEventTearOff();

mixin _$AnswerWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllByThreadStarted(Thread thread),
    @required
        Result answersReceived(
            Either<AnswerFailure, IList<Answer>> failureOrAnswers),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllByThreadStarted(Thread thread),
    Result answersReceived(
        Either<AnswerFailure, IList<Answer>> failureOrAnswers),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllByThreadStarted(_WatchAllStarted value),
    @required Result answersReceived(_AnswersReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllByThreadStarted(_WatchAllStarted value),
    Result answersReceived(_AnswersReceived value),
    @required Result orElse(),
  });
}

abstract class $AnswerWatcherEventCopyWith<$Res> {
  factory $AnswerWatcherEventCopyWith(
          AnswerWatcherEvent value, $Res Function(AnswerWatcherEvent) then) =
      _$AnswerWatcherEventCopyWithImpl<$Res>;
}

class _$AnswerWatcherEventCopyWithImpl<$Res>
    implements $AnswerWatcherEventCopyWith<$Res> {
  _$AnswerWatcherEventCopyWithImpl(this._value, this._then);

  final AnswerWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(AnswerWatcherEvent) _then;
}

abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
  $Res call({Thread thread});

  $ThreadCopyWith<$Res> get thread;
}

class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$AnswerWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;

  @override
  $Res call({
    Object thread = freezed,
  }) {
    return _then(_WatchAllStarted(
      thread == freezed ? _value.thread : thread as Thread,
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

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(this.thread) : assert(thread != null);

  @override
  final Thread thread;

  @override
  String toString() {
    return 'AnswerWatcherEvent.watchAllByThreadStarted(thread: $thread)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllStarted &&
            (identical(other.thread, thread) ||
                const DeepCollectionEquality().equals(other.thread, thread)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(thread);

  @override
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith =>
      __$WatchAllStartedCopyWithImpl<_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllByThreadStarted(Thread thread),
    @required
        Result answersReceived(
            Either<AnswerFailure, IList<Answer>> failureOrAnswers),
  }) {
    assert(watchAllByThreadStarted != null);
    assert(answersReceived != null);
    return watchAllByThreadStarted(thread);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllByThreadStarted(Thread thread),
    Result answersReceived(
        Either<AnswerFailure, IList<Answer>> failureOrAnswers),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllByThreadStarted != null) {
      return watchAllByThreadStarted(thread);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllByThreadStarted(_WatchAllStarted value),
    @required Result answersReceived(_AnswersReceived value),
  }) {
    assert(watchAllByThreadStarted != null);
    assert(answersReceived != null);
    return watchAllByThreadStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllByThreadStarted(_WatchAllStarted value),
    Result answersReceived(_AnswersReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllByThreadStarted != null) {
      return watchAllByThreadStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements AnswerWatcherEvent {
  const factory _WatchAllStarted(Thread thread) = _$_WatchAllStarted;

  Thread get thread;
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith;
}

abstract class _$AnswersReceivedCopyWith<$Res> {
  factory _$AnswersReceivedCopyWith(
          _AnswersReceived value, $Res Function(_AnswersReceived) then) =
      __$AnswersReceivedCopyWithImpl<$Res>;
  $Res call({Either<AnswerFailure, IList<Answer>> failureOrAnswers});
}

class __$AnswersReceivedCopyWithImpl<$Res>
    extends _$AnswerWatcherEventCopyWithImpl<$Res>
    implements _$AnswersReceivedCopyWith<$Res> {
  __$AnswersReceivedCopyWithImpl(
      _AnswersReceived _value, $Res Function(_AnswersReceived) _then)
      : super(_value, (v) => _then(v as _AnswersReceived));

  @override
  _AnswersReceived get _value => super._value as _AnswersReceived;

  @override
  $Res call({
    Object failureOrAnswers = freezed,
  }) {
    return _then(_AnswersReceived(
      failureOrAnswers == freezed
          ? _value.failureOrAnswers
          : failureOrAnswers as Either<AnswerFailure, IList<Answer>>,
    ));
  }
}

class _$_AnswersReceived implements _AnswersReceived {
  const _$_AnswersReceived(this.failureOrAnswers)
      : assert(failureOrAnswers != null);

  @override
  final Either<AnswerFailure, IList<Answer>> failureOrAnswers;

  @override
  String toString() {
    return 'AnswerWatcherEvent.answersReceived(failureOrAnswers: $failureOrAnswers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnswersReceived &&
            (identical(other.failureOrAnswers, failureOrAnswers) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrAnswers, failureOrAnswers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrAnswers);

  @override
  _$AnswersReceivedCopyWith<_AnswersReceived> get copyWith =>
      __$AnswersReceivedCopyWithImpl<_AnswersReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllByThreadStarted(Thread thread),
    @required
        Result answersReceived(
            Either<AnswerFailure, IList<Answer>> failureOrAnswers),
  }) {
    assert(watchAllByThreadStarted != null);
    assert(answersReceived != null);
    return answersReceived(failureOrAnswers);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllByThreadStarted(Thread thread),
    Result answersReceived(
        Either<AnswerFailure, IList<Answer>> failureOrAnswers),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (answersReceived != null) {
      return answersReceived(failureOrAnswers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllByThreadStarted(_WatchAllStarted value),
    @required Result answersReceived(_AnswersReceived value),
  }) {
    assert(watchAllByThreadStarted != null);
    assert(answersReceived != null);
    return answersReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllByThreadStarted(_WatchAllStarted value),
    Result answersReceived(_AnswersReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (answersReceived != null) {
      return answersReceived(this);
    }
    return orElse();
  }
}

abstract class _AnswersReceived implements AnswerWatcherEvent {
  const factory _AnswersReceived(
          Either<AnswerFailure, IList<Answer>> failureOrAnswers) =
      _$_AnswersReceived;

  Either<AnswerFailure, IList<Answer>> get failureOrAnswers;
  _$AnswersReceivedCopyWith<_AnswersReceived> get copyWith;
}

class _$AnswerWatcherStateTearOff {
  const _$AnswerWatcherStateTearOff();

  Initial initial() {
    return const Initial();
  }

  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

  LoadSuccess loadSuccess(IList<Answer> answers) {
    return LoadSuccess(
      answers,
    );
  }

  LoadFailure loadFailure(AnswerFailure answerFailure) {
    return LoadFailure(
      answerFailure,
    );
  }
}

// ignore: unused_element
const $AnswerWatcherState = _$AnswerWatcherStateTearOff();

mixin _$AnswerWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(IList<Answer> answers),
    @required Result loadFailure(AnswerFailure answerFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(IList<Answer> answers),
    Result loadFailure(AnswerFailure answerFailure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

abstract class $AnswerWatcherStateCopyWith<$Res> {
  factory $AnswerWatcherStateCopyWith(
          AnswerWatcherState value, $Res Function(AnswerWatcherState) then) =
      _$AnswerWatcherStateCopyWithImpl<$Res>;
}

class _$AnswerWatcherStateCopyWithImpl<$Res>
    implements $AnswerWatcherStateCopyWith<$Res> {
  _$AnswerWatcherStateCopyWithImpl(this._value, this._then);

  final AnswerWatcherState _value;
  // ignore: unused_field
  final $Res Function(AnswerWatcherState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$AnswerWatcherStateCopyWithImpl<$Res>
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
    return 'AnswerWatcherState.initial()';
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
    @required Result loadInProgress(),
    @required Result loadSuccess(IList<Answer> answers),
    @required Result loadFailure(AnswerFailure answerFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(IList<Answer> answers),
    Result loadFailure(AnswerFailure answerFailure),
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
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AnswerWatcherState {
  const factory Initial() = _$Initial;
}

abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$AnswerWatcherStateCopyWithImpl<$Res>
    implements $DataTransferInProgressCopyWith<$Res> {
  _$DataTransferInProgressCopyWithImpl(DataTransferInProgress _value,
      $Res Function(DataTransferInProgress) _then)
      : super(_value, (v) => _then(v as DataTransferInProgress));

  @override
  DataTransferInProgress get _value => super._value as DataTransferInProgress;
}

class _$DataTransferInProgress implements DataTransferInProgress {
  const _$DataTransferInProgress();

  @override
  String toString() {
    return 'AnswerWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(IList<Answer> answers),
    @required Result loadFailure(AnswerFailure answerFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(IList<Answer> answers),
    Result loadFailure(AnswerFailure answerFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class DataTransferInProgress implements AnswerWatcherState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({IList<Answer> answers});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$AnswerWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object answers = freezed,
  }) {
    return _then(LoadSuccess(
      answers == freezed ? _value.answers : answers as IList<Answer>,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.answers) : assert(answers != null);

  @override
  final IList<Answer> answers;

  @override
  String toString() {
    return 'AnswerWatcherState.loadSuccess(answers: $answers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.answers, answers) ||
                const DeepCollectionEquality().equals(other.answers, answers)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(answers);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(IList<Answer> answers),
    @required Result loadFailure(AnswerFailure answerFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(answers);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(IList<Answer> answers),
    Result loadFailure(AnswerFailure answerFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(answers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class LoadSuccess implements AnswerWatcherState {
  const factory LoadSuccess(IList<Answer> answers) = _$LoadSuccess;

  IList<Answer> get answers;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({AnswerFailure answerFailure});

  $AnswerFailureCopyWith<$Res> get answerFailure;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$AnswerWatcherStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object answerFailure = freezed,
  }) {
    return _then(LoadFailure(
      answerFailure == freezed
          ? _value.answerFailure
          : answerFailure as AnswerFailure,
    ));
  }

  @override
  $AnswerFailureCopyWith<$Res> get answerFailure {
    if (_value.answerFailure == null) {
      return null;
    }
    return $AnswerFailureCopyWith<$Res>(_value.answerFailure, (value) {
      return _then(_value.copyWith(answerFailure: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.answerFailure) : assert(answerFailure != null);

  @override
  final AnswerFailure answerFailure;

  @override
  String toString() {
    return 'AnswerWatcherState.loadFailure(answerFailure: $answerFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.answerFailure, answerFailure) ||
                const DeepCollectionEquality()
                    .equals(other.answerFailure, answerFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(answerFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(IList<Answer> answers),
    @required Result loadFailure(AnswerFailure answerFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(answerFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(IList<Answer> answers),
    Result loadFailure(AnswerFailure answerFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(answerFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loadInProgress(DataTransferInProgress value),
    @required Result loadSuccess(LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loadInProgress(DataTransferInProgress value),
    Result loadSuccess(LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements AnswerWatcherState {
  const factory LoadFailure(AnswerFailure answerFailure) = _$LoadFailure;

  AnswerFailure get answerFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
