// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'thread_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
RequestDto _$RequestDtoFromJson(Map<String, dynamic> json) {
  return _RequestDto.fromJson(json);
}

class _$RequestDtoTearOff {
  const _$RequestDtoTearOff();

// ignore: unused_element
  _RequestDto call(
      {@required String title,
      @required String content,
      @required String author,
      @required @DateTimeTimestampConverter() DateTime published,
      @required @DateTimeTimestampConverter() DateTime updated}) {
    return _RequestDto(
      title: title,
      content: content,
      author: author,
      published: published,
      updated: updated,
    );
  }
}

// ignore: unused_element
const $RequestDto = _$RequestDtoTearOff();

mixin _$RequestDto {
  String get title;
  String get content;
  String get author;
  @DateTimeTimestampConverter()
  DateTime get published;
  @DateTimeTimestampConverter()
  DateTime get updated;

  Map<String, dynamic> toJson();
  $RequestDtoCopyWith<RequestDto> get copyWith;
}

abstract class $RequestDtoCopyWith<$Res> {
  factory $RequestDtoCopyWith(
          RequestDto value, $Res Function(RequestDto) then) =
      _$RequestDtoCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String content,
      String author,
      @DateTimeTimestampConverter() DateTime published,
      @DateTimeTimestampConverter() DateTime updated});
}

class _$RequestDtoCopyWithImpl<$Res> implements $RequestDtoCopyWith<$Res> {
  _$RequestDtoCopyWithImpl(this._value, this._then);

  final RequestDto _value;
  // ignore: unused_field
  final $Res Function(RequestDto) _then;

  @override
  $Res call({
    Object title = freezed,
    Object content = freezed,
    Object author = freezed,
    Object published = freezed,
    Object updated = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      content: content == freezed ? _value.content : content as String,
      author: author == freezed ? _value.author : author as String,
      published:
          published == freezed ? _value.published : published as DateTime,
      updated: updated == freezed ? _value.updated : updated as DateTime,
    ));
  }
}

abstract class _$RequestDtoCopyWith<$Res> implements $RequestDtoCopyWith<$Res> {
  factory _$RequestDtoCopyWith(
          _RequestDto value, $Res Function(_RequestDto) then) =
      __$RequestDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String content,
      String author,
      @DateTimeTimestampConverter() DateTime published,
      @DateTimeTimestampConverter() DateTime updated});
}

class __$RequestDtoCopyWithImpl<$Res> extends _$RequestDtoCopyWithImpl<$Res>
    implements _$RequestDtoCopyWith<$Res> {
  __$RequestDtoCopyWithImpl(
      _RequestDto _value, $Res Function(_RequestDto) _then)
      : super(_value, (v) => _then(v as _RequestDto));

  @override
  _RequestDto get _value => super._value as _RequestDto;

  @override
  $Res call({
    Object title = freezed,
    Object content = freezed,
    Object author = freezed,
    Object published = freezed,
    Object updated = freezed,
  }) {
    return _then(_RequestDto(
      title: title == freezed ? _value.title : title as String,
      content: content == freezed ? _value.content : content as String,
      author: author == freezed ? _value.author : author as String,
      published:
          published == freezed ? _value.published : published as DateTime,
      updated: updated == freezed ? _value.updated : updated as DateTime,
    ));
  }
}

@JsonSerializable()
class _$_RequestDto implements _RequestDto {
  const _$_RequestDto(
      {@required this.title,
      @required this.content,
      @required this.author,
      @required @DateTimeTimestampConverter() this.published,
      @required @DateTimeTimestampConverter() this.updated})
      : assert(title != null),
        assert(content != null),
        assert(author != null),
        assert(published != null),
        assert(updated != null);

  factory _$_RequestDto.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestDtoFromJson(json);

  @override
  final String title;
  @override
  final String content;
  @override
  final String author;
  @override
  @DateTimeTimestampConverter()
  final DateTime published;
  @override
  @DateTimeTimestampConverter()
  final DateTime updated;

  @override
  String toString() {
    return 'RequestDto(title: $title, content: $content, author: $author, published: $published, updated: $updated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestDto &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.published, published) ||
                const DeepCollectionEquality()
                    .equals(other.published, published)) &&
            (identical(other.updated, updated) ||
                const DeepCollectionEquality().equals(other.updated, updated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(published) ^
      const DeepCollectionEquality().hash(updated);

  @override
  _$RequestDtoCopyWith<_RequestDto> get copyWith =>
      __$RequestDtoCopyWithImpl<_RequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestDtoToJson(this);
  }
}

abstract class _RequestDto implements RequestDto {
  const factory _RequestDto(
          {@required String title,
          @required String content,
          @required String author,
          @required @DateTimeTimestampConverter() DateTime published,
          @required @DateTimeTimestampConverter() DateTime updated}) =
      _$_RequestDto;

  factory _RequestDto.fromJson(Map<String, dynamic> json) =
      _$_RequestDto.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  String get author;
  @override
  @DateTimeTimestampConverter()
  DateTime get published;
  @override
  @DateTimeTimestampConverter()
  DateTime get updated;
  @override
  _$RequestDtoCopyWith<_RequestDto> get copyWith;
}

ThreadDto _$ThreadDtoFromJson(Map<String, dynamic> json) {
  return _ThreadDto.fromJson(json);
}

class _$ThreadDtoTearOff {
  const _$ThreadDtoTearOff();

// ignore: unused_element
  _ThreadDto call(
      {@JsonKey(ignore: true) String id,
      @required RequestDto request,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _ThreadDto(
      id: id,
      request: request,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $ThreadDto = _$ThreadDtoTearOff();

mixin _$ThreadDto {
  @JsonKey(ignore: true)
  String get id;
  RequestDto get request;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $ThreadDtoCopyWith<ThreadDto> get copyWith;
}

abstract class $ThreadDtoCopyWith<$Res> {
  factory $ThreadDtoCopyWith(ThreadDto value, $Res Function(ThreadDto) then) =
      _$ThreadDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      RequestDto request,
      @ServerTimestampConverter() FieldValue serverTimeStamp});

  $RequestDtoCopyWith<$Res> get request;
}

class _$ThreadDtoCopyWithImpl<$Res> implements $ThreadDtoCopyWith<$Res> {
  _$ThreadDtoCopyWithImpl(this._value, this._then);

  final ThreadDto _value;
  // ignore: unused_field
  final $Res Function(ThreadDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object request = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      request: request == freezed ? _value.request : request as RequestDto,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }

  @override
  $RequestDtoCopyWith<$Res> get request {
    if (_value.request == null) {
      return null;
    }
    return $RequestDtoCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

abstract class _$ThreadDtoCopyWith<$Res> implements $ThreadDtoCopyWith<$Res> {
  factory _$ThreadDtoCopyWith(
          _ThreadDto value, $Res Function(_ThreadDto) then) =
      __$ThreadDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      RequestDto request,
      @ServerTimestampConverter() FieldValue serverTimeStamp});

  @override
  $RequestDtoCopyWith<$Res> get request;
}

class __$ThreadDtoCopyWithImpl<$Res> extends _$ThreadDtoCopyWithImpl<$Res>
    implements _$ThreadDtoCopyWith<$Res> {
  __$ThreadDtoCopyWithImpl(_ThreadDto _value, $Res Function(_ThreadDto) _then)
      : super(_value, (v) => _then(v as _ThreadDto));

  @override
  _ThreadDto get _value => super._value as _ThreadDto;

  @override
  $Res call({
    Object id = freezed,
    Object request = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_ThreadDto(
      id: id == freezed ? _value.id : id as String,
      request: request == freezed ? _value.request : request as RequestDto,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_ThreadDto implements _ThreadDto {
  _$_ThreadDto(
      {@JsonKey(ignore: true) this.id,
      @required this.request,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(request != null),
        assert(serverTimeStamp != null);

  factory _$_ThreadDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ThreadDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final RequestDto request;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'ThreadDto(id: $id, request: $request, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThreadDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.request, request) ||
                const DeepCollectionEquality()
                    .equals(other.request, request)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(request) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$ThreadDtoCopyWith<_ThreadDto> get copyWith =>
      __$ThreadDtoCopyWithImpl<_ThreadDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ThreadDtoToJson(this);
  }
}

abstract class _ThreadDto implements ThreadDto {
  factory _ThreadDto(
          {@JsonKey(ignore: true) String id,
          @required RequestDto request,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_ThreadDto;

  factory _ThreadDto.fromJson(Map<String, dynamic> json) =
      _$_ThreadDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  RequestDto get request;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$ThreadDtoCopyWith<_ThreadDto> get copyWith;
}
