// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'thread.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ThreadTearOff {
  const _$ThreadTearOff();

// ignore: unused_element
  _Thread call({@required UniqueId id, @required Request request}) {
    return _Thread(
      id: id,
      request: request,
    );
  }
}

// ignore: unused_element
const $Thread = _$ThreadTearOff();

mixin _$Thread {
  UniqueId get id;
  Request get request;

  $ThreadCopyWith<Thread> get copyWith;
}

abstract class $ThreadCopyWith<$Res> {
  factory $ThreadCopyWith(Thread value, $Res Function(Thread) then) =
      _$ThreadCopyWithImpl<$Res>;
  $Res call({UniqueId id, Request request});

  $RequestCopyWith<$Res> get request;
}

class _$ThreadCopyWithImpl<$Res> implements $ThreadCopyWith<$Res> {
  _$ThreadCopyWithImpl(this._value, this._then);

  final Thread _value;
  // ignore: unused_field
  final $Res Function(Thread) _then;

  @override
  $Res call({
    Object id = freezed,
    Object request = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      request: request == freezed ? _value.request : request as Request,
    ));
  }

  @override
  $RequestCopyWith<$Res> get request {
    if (_value.request == null) {
      return null;
    }
    return $RequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

abstract class _$ThreadCopyWith<$Res> implements $ThreadCopyWith<$Res> {
  factory _$ThreadCopyWith(_Thread value, $Res Function(_Thread) then) =
      __$ThreadCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, Request request});

  @override
  $RequestCopyWith<$Res> get request;
}

class __$ThreadCopyWithImpl<$Res> extends _$ThreadCopyWithImpl<$Res>
    implements _$ThreadCopyWith<$Res> {
  __$ThreadCopyWithImpl(_Thread _value, $Res Function(_Thread) _then)
      : super(_value, (v) => _then(v as _Thread));

  @override
  _Thread get _value => super._value as _Thread;

  @override
  $Res call({
    Object id = freezed,
    Object request = freezed,
  }) {
    return _then(_Thread(
      id: id == freezed ? _value.id : id as UniqueId,
      request: request == freezed ? _value.request : request as Request,
    ));
  }
}

class _$_Thread with DiagnosticableTreeMixin implements _Thread {
  const _$_Thread({@required this.id, @required this.request})
      : assert(id != null),
        assert(request != null);

  @override
  final UniqueId id;
  @override
  final Request request;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Thread(id: $id, request: $request)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Thread'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('request', request));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Thread &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.request, request) ||
                const DeepCollectionEquality().equals(other.request, request)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(request);

  @override
  _$ThreadCopyWith<_Thread> get copyWith =>
      __$ThreadCopyWithImpl<_Thread>(this, _$identity);
}

abstract class _Thread implements Thread {
  const factory _Thread({@required UniqueId id, @required Request request}) =
      _$_Thread;

  @override
  UniqueId get id;
  @override
  Request get request;
  @override
  _$ThreadCopyWith<_Thread> get copyWith;
}
