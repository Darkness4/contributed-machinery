// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'thread_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ThreadWatcherEventTearOff {
  const _$ThreadWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted() {
    return const _WatchAllStarted();
  }

// ignore: unused_element
  _ThreadsReceived threadsReceived(
      Either<ThreadFailure, IList<Thread>> failureOrThreads) {
    return _ThreadsReceived(
      failureOrThreads,
    );
  }
}

// ignore: unused_element
const $ThreadWatcherEvent = _$ThreadWatcherEventTearOff();

mixin _$ThreadWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result threadsReceived(
            Either<ThreadFailure, IList<Thread>> failureOrThreads),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result threadsReceived(
        Either<ThreadFailure, IList<Thread>> failureOrThreads),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result threadsReceived(_ThreadsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result threadsReceived(_ThreadsReceived value),
    @required Result orElse(),
  });
}

abstract class $ThreadWatcherEventCopyWith<$Res> {
  factory $ThreadWatcherEventCopyWith(
          ThreadWatcherEvent value, $Res Function(ThreadWatcherEvent) then) =
      _$ThreadWatcherEventCopyWithImpl<$Res>;
}

class _$ThreadWatcherEventCopyWithImpl<$Res>
    implements $ThreadWatcherEventCopyWith<$Res> {
  _$ThreadWatcherEventCopyWithImpl(this._value, this._then);

  final ThreadWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(ThreadWatcherEvent) _then;
}

abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;
}

class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$ThreadWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;
}

class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted();

  @override
  String toString() {
    return 'ThreadWatcherEvent.watchAllStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WatchAllStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result threadsReceived(
            Either<ThreadFailure, IList<Thread>> failureOrThreads),
  }) {
    assert(watchAllStarted != null);
    assert(threadsReceived != null);
    return watchAllStarted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result threadsReceived(
        Either<ThreadFailure, IList<Thread>> failureOrThreads),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result threadsReceived(_ThreadsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(threadsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result threadsReceived(_ThreadsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements ThreadWatcherEvent {
  const factory _WatchAllStarted() = _$_WatchAllStarted;
}

abstract class _$ThreadsReceivedCopyWith<$Res> {
  factory _$ThreadsReceivedCopyWith(
          _ThreadsReceived value, $Res Function(_ThreadsReceived) then) =
      __$ThreadsReceivedCopyWithImpl<$Res>;
  $Res call({Either<ThreadFailure, IList<Thread>> failureOrThreads});
}

class __$ThreadsReceivedCopyWithImpl<$Res>
    extends _$ThreadWatcherEventCopyWithImpl<$Res>
    implements _$ThreadsReceivedCopyWith<$Res> {
  __$ThreadsReceivedCopyWithImpl(
      _ThreadsReceived _value, $Res Function(_ThreadsReceived) _then)
      : super(_value, (v) => _then(v as _ThreadsReceived));

  @override
  _ThreadsReceived get _value => super._value as _ThreadsReceived;

  @override
  $Res call({
    Object failureOrThreads = freezed,
  }) {
    return _then(_ThreadsReceived(
      failureOrThreads == freezed
          ? _value.failureOrThreads
          : failureOrThreads as Either<ThreadFailure, IList<Thread>>,
    ));
  }
}

class _$_ThreadsReceived implements _ThreadsReceived {
  const _$_ThreadsReceived(this.failureOrThreads)
      : assert(failureOrThreads != null);

  @override
  final Either<ThreadFailure, IList<Thread>> failureOrThreads;

  @override
  String toString() {
    return 'ThreadWatcherEvent.threadsReceived(failureOrThreads: $failureOrThreads)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThreadsReceived &&
            (identical(other.failureOrThreads, failureOrThreads) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrThreads, failureOrThreads)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrThreads);

  @override
  _$ThreadsReceivedCopyWith<_ThreadsReceived> get copyWith =>
      __$ThreadsReceivedCopyWithImpl<_ThreadsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result watchAllStarted(),
    @required
        Result threadsReceived(
            Either<ThreadFailure, IList<Thread>> failureOrThreads),
  }) {
    assert(watchAllStarted != null);
    assert(threadsReceived != null);
    return threadsReceived(failureOrThreads);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(),
    Result threadsReceived(
        Either<ThreadFailure, IList<Thread>> failureOrThreads),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (threadsReceived != null) {
      return threadsReceived(failureOrThreads);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result threadsReceived(_ThreadsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(threadsReceived != null);
    return threadsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result threadsReceived(_ThreadsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (threadsReceived != null) {
      return threadsReceived(this);
    }
    return orElse();
  }
}

abstract class _ThreadsReceived implements ThreadWatcherEvent {
  const factory _ThreadsReceived(
          Either<ThreadFailure, IList<Thread>> failureOrThreads) =
      _$_ThreadsReceived;

  Either<ThreadFailure, IList<Thread>> get failureOrThreads;
  _$ThreadsReceivedCopyWith<_ThreadsReceived> get copyWith;
}

class _$ThreadWatcherStateTearOff {
  const _$ThreadWatcherStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  DataTransferInProgress loadInProgress() {
    return const DataTransferInProgress();
  }

// ignore: unused_element
  LoadSuccess loadSuccess(IList<Thread> threads) {
    return LoadSuccess(
      threads,
    );
  }

// ignore: unused_element
  LoadFailure loadFailure(ThreadFailure threadFailure) {
    return LoadFailure(
      threadFailure,
    );
  }
}

// ignore: unused_element
const $ThreadWatcherState = _$ThreadWatcherStateTearOff();

mixin _$ThreadWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(IList<Thread> threads),
    @required Result loadFailure(ThreadFailure threadFailure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(IList<Thread> threads),
    Result loadFailure(ThreadFailure threadFailure),
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

abstract class $ThreadWatcherStateCopyWith<$Res> {
  factory $ThreadWatcherStateCopyWith(
          ThreadWatcherState value, $Res Function(ThreadWatcherState) then) =
      _$ThreadWatcherStateCopyWithImpl<$Res>;
}

class _$ThreadWatcherStateCopyWithImpl<$Res>
    implements $ThreadWatcherStateCopyWith<$Res> {
  _$ThreadWatcherStateCopyWithImpl(this._value, this._then);

  final ThreadWatcherState _value;
  // ignore: unused_field
  final $Res Function(ThreadWatcherState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$ThreadWatcherStateCopyWithImpl<$Res>
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
    return 'ThreadWatcherState.initial()';
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
    @required Result loadSuccess(IList<Thread> threads),
    @required Result loadFailure(ThreadFailure threadFailure),
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
    Result loadSuccess(IList<Thread> threads),
    Result loadFailure(ThreadFailure threadFailure),
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

abstract class Initial implements ThreadWatcherState {
  const factory Initial() = _$Initial;
}

abstract class $DataTransferInProgressCopyWith<$Res> {
  factory $DataTransferInProgressCopyWith(DataTransferInProgress value,
          $Res Function(DataTransferInProgress) then) =
      _$DataTransferInProgressCopyWithImpl<$Res>;
}

class _$DataTransferInProgressCopyWithImpl<$Res>
    extends _$ThreadWatcherStateCopyWithImpl<$Res>
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
    return 'ThreadWatcherState.loadInProgress()';
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
    @required Result loadSuccess(IList<Thread> threads),
    @required Result loadFailure(ThreadFailure threadFailure),
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
    Result loadSuccess(IList<Thread> threads),
    Result loadFailure(ThreadFailure threadFailure),
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

abstract class DataTransferInProgress implements ThreadWatcherState {
  const factory DataTransferInProgress() = _$DataTransferInProgress;
}

abstract class $LoadSuccessCopyWith<$Res> {
  factory $LoadSuccessCopyWith(
          LoadSuccess value, $Res Function(LoadSuccess) then) =
      _$LoadSuccessCopyWithImpl<$Res>;
  $Res call({IList<Thread> threads});
}

class _$LoadSuccessCopyWithImpl<$Res>
    extends _$ThreadWatcherStateCopyWithImpl<$Res>
    implements $LoadSuccessCopyWith<$Res> {
  _$LoadSuccessCopyWithImpl(
      LoadSuccess _value, $Res Function(LoadSuccess) _then)
      : super(_value, (v) => _then(v as LoadSuccess));

  @override
  LoadSuccess get _value => super._value as LoadSuccess;

  @override
  $Res call({
    Object threads = freezed,
  }) {
    return _then(LoadSuccess(
      threads == freezed ? _value.threads : threads as IList<Thread>,
    ));
  }
}

class _$LoadSuccess implements LoadSuccess {
  const _$LoadSuccess(this.threads) : assert(threads != null);

  @override
  final IList<Thread> threads;

  @override
  String toString() {
    return 'ThreadWatcherState.loadSuccess(threads: $threads)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadSuccess &&
            (identical(other.threads, threads) ||
                const DeepCollectionEquality().equals(other.threads, threads)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(threads);

  @override
  $LoadSuccessCopyWith<LoadSuccess> get copyWith =>
      _$LoadSuccessCopyWithImpl<LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(IList<Thread> threads),
    @required Result loadFailure(ThreadFailure threadFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(threads);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(IList<Thread> threads),
    Result loadFailure(ThreadFailure threadFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(threads);
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

abstract class LoadSuccess implements ThreadWatcherState {
  const factory LoadSuccess(IList<Thread> threads) = _$LoadSuccess;

  IList<Thread> get threads;
  $LoadSuccessCopyWith<LoadSuccess> get copyWith;
}

abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;
  $Res call({ThreadFailure threadFailure});

  $ThreadFailureCopyWith<$Res> get threadFailure;
}

class _$LoadFailureCopyWithImpl<$Res>
    extends _$ThreadWatcherStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object threadFailure = freezed,
  }) {
    return _then(LoadFailure(
      threadFailure == freezed
          ? _value.threadFailure
          : threadFailure as ThreadFailure,
    ));
  }

  @override
  $ThreadFailureCopyWith<$Res> get threadFailure {
    if (_value.threadFailure == null) {
      return null;
    }
    return $ThreadFailureCopyWith<$Res>(_value.threadFailure, (value) {
      return _then(_value.copyWith(threadFailure: value));
    });
  }
}

class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.threadFailure) : assert(threadFailure != null);

  @override
  final ThreadFailure threadFailure;

  @override
  String toString() {
    return 'ThreadWatcherState.loadFailure(threadFailure: $threadFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.threadFailure, threadFailure) ||
                const DeepCollectionEquality()
                    .equals(other.threadFailure, threadFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(threadFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(IList<Thread> threads),
    @required Result loadFailure(ThreadFailure threadFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(threadFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(IList<Thread> threads),
    Result loadFailure(ThreadFailure threadFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(threadFailure);
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

abstract class LoadFailure implements ThreadWatcherState {
  const factory LoadFailure(ThreadFailure threadFailure) = _$LoadFailure;

  ThreadFailure get threadFailure;
  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
