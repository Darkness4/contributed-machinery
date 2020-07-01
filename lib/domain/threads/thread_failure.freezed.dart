// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'thread_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ThreadFailureTearOff {
  const _$ThreadFailureTearOff();

  Unexpected unexpected(dynamic e) {
    return Unexpected(
      e,
    );
  }

  InsufficientPermissions insufficientPermissions() {
    return const InsufficientPermissions();
  }

  UnableToUpdate unableToUpdate() {
    return const UnableToUpdate();
  }
}

// ignore: unused_element
const $ThreadFailure = _$ThreadFailureTearOff();

mixin _$ThreadFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(dynamic e),
    @required Result insufficientPermissions(),
    @required Result unableToUpdate(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(dynamic e),
    Result insufficientPermissions(),
    Result unableToUpdate(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result insufficientPermissions(InsufficientPermissions value),
    @required Result unableToUpdate(UnableToUpdate value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result insufficientPermissions(InsufficientPermissions value),
    Result unableToUpdate(UnableToUpdate value),
    @required Result orElse(),
  });
}

abstract class $ThreadFailureCopyWith<$Res> {
  factory $ThreadFailureCopyWith(
          ThreadFailure value, $Res Function(ThreadFailure) then) =
      _$ThreadFailureCopyWithImpl<$Res>;
}

class _$ThreadFailureCopyWithImpl<$Res>
    implements $ThreadFailureCopyWith<$Res> {
  _$ThreadFailureCopyWithImpl(this._value, this._then);

  final ThreadFailure _value;
  // ignore: unused_field
  final $Res Function(ThreadFailure) _then;
}

abstract class $UnexpectedCopyWith<$Res> {
  factory $UnexpectedCopyWith(
          Unexpected value, $Res Function(Unexpected) then) =
      _$UnexpectedCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

class _$UnexpectedCopyWithImpl<$Res> extends _$ThreadFailureCopyWithImpl<$Res>
    implements $UnexpectedCopyWith<$Res> {
  _$UnexpectedCopyWithImpl(Unexpected _value, $Res Function(Unexpected) _then)
      : super(_value, (v) => _then(v as Unexpected));

  @override
  Unexpected get _value => super._value as Unexpected;

  @override
  $Res call({
    Object e = freezed,
  }) {
    return _then(Unexpected(
      e == freezed ? _value.e : e as dynamic,
    ));
  }
}

class _$Unexpected implements Unexpected {
  const _$Unexpected(this.e) : assert(e != null);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'ThreadFailure.unexpected(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Unexpected &&
            (identical(other.e, e) ||
                const DeepCollectionEquality().equals(other.e, e)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(e);

  @override
  $UnexpectedCopyWith<Unexpected> get copyWith =>
      _$UnexpectedCopyWithImpl<Unexpected>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(dynamic e),
    @required Result insufficientPermissions(),
    @required Result unableToUpdate(),
  }) {
    assert(unexpected != null);
    assert(insufficientPermissions != null);
    assert(unableToUpdate != null);
    return unexpected(e);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(dynamic e),
    Result insufficientPermissions(),
    Result unableToUpdate(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result insufficientPermissions(InsufficientPermissions value),
    @required Result unableToUpdate(UnableToUpdate value),
  }) {
    assert(unexpected != null);
    assert(insufficientPermissions != null);
    assert(unableToUpdate != null);
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result insufficientPermissions(InsufficientPermissions value),
    Result unableToUpdate(UnableToUpdate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class Unexpected implements ThreadFailure {
  const factory Unexpected(dynamic e) = _$Unexpected;

  dynamic get e;
  $UnexpectedCopyWith<Unexpected> get copyWith;
}

abstract class $InsufficientPermissionsCopyWith<$Res> {
  factory $InsufficientPermissionsCopyWith(InsufficientPermissions value,
          $Res Function(InsufficientPermissions) then) =
      _$InsufficientPermissionsCopyWithImpl<$Res>;
}

class _$InsufficientPermissionsCopyWithImpl<$Res>
    extends _$ThreadFailureCopyWithImpl<$Res>
    implements $InsufficientPermissionsCopyWith<$Res> {
  _$InsufficientPermissionsCopyWithImpl(InsufficientPermissions _value,
      $Res Function(InsufficientPermissions) _then)
      : super(_value, (v) => _then(v as InsufficientPermissions));

  @override
  InsufficientPermissions get _value => super._value as InsufficientPermissions;
}

class _$InsufficientPermissions implements InsufficientPermissions {
  const _$InsufficientPermissions();

  @override
  String toString() {
    return 'ThreadFailure.insufficientPermissions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is InsufficientPermissions);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(dynamic e),
    @required Result insufficientPermissions(),
    @required Result unableToUpdate(),
  }) {
    assert(unexpected != null);
    assert(insufficientPermissions != null);
    assert(unableToUpdate != null);
    return insufficientPermissions();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(dynamic e),
    Result insufficientPermissions(),
    Result unableToUpdate(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermissions != null) {
      return insufficientPermissions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result insufficientPermissions(InsufficientPermissions value),
    @required Result unableToUpdate(UnableToUpdate value),
  }) {
    assert(unexpected != null);
    assert(insufficientPermissions != null);
    assert(unableToUpdate != null);
    return insufficientPermissions(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result insufficientPermissions(InsufficientPermissions value),
    Result unableToUpdate(UnableToUpdate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insufficientPermissions != null) {
      return insufficientPermissions(this);
    }
    return orElse();
  }
}

abstract class InsufficientPermissions implements ThreadFailure {
  const factory InsufficientPermissions() = _$InsufficientPermissions;
}

abstract class $UnableToUpdateCopyWith<$Res> {
  factory $UnableToUpdateCopyWith(
          UnableToUpdate value, $Res Function(UnableToUpdate) then) =
      _$UnableToUpdateCopyWithImpl<$Res>;
}

class _$UnableToUpdateCopyWithImpl<$Res>
    extends _$ThreadFailureCopyWithImpl<$Res>
    implements $UnableToUpdateCopyWith<$Res> {
  _$UnableToUpdateCopyWithImpl(
      UnableToUpdate _value, $Res Function(UnableToUpdate) _then)
      : super(_value, (v) => _then(v as UnableToUpdate));

  @override
  UnableToUpdate get _value => super._value as UnableToUpdate;
}

class _$UnableToUpdate implements UnableToUpdate {
  const _$UnableToUpdate();

  @override
  String toString() {
    return 'ThreadFailure.unableToUpdate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnableToUpdate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result unexpected(dynamic e),
    @required Result insufficientPermissions(),
    @required Result unableToUpdate(),
  }) {
    assert(unexpected != null);
    assert(insufficientPermissions != null);
    assert(unableToUpdate != null);
    return unableToUpdate();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result unexpected(dynamic e),
    Result insufficientPermissions(),
    Result unableToUpdate(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unableToUpdate != null) {
      return unableToUpdate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result unexpected(Unexpected value),
    @required Result insufficientPermissions(InsufficientPermissions value),
    @required Result unableToUpdate(UnableToUpdate value),
  }) {
    assert(unexpected != null);
    assert(insufficientPermissions != null);
    assert(unableToUpdate != null);
    return unableToUpdate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result unexpected(Unexpected value),
    Result insufficientPermissions(InsufficientPermissions value),
    Result unableToUpdate(UnableToUpdate value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unableToUpdate != null) {
      return unableToUpdate(this);
    }
    return orElse();
  }
}

abstract class UnableToUpdate implements ThreadFailure {
  const factory UnableToUpdate() = _$UnableToUpdate;
}
