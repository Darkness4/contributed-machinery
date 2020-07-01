// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'answer_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
AnswerDto _$AnswerDtoFromJson(Map<String, dynamic> json) {
  return _AnswerDto.fromJson(json);
}

class _$AnswerDtoTearOff {
  const _$AnswerDtoTearOff();

  _AnswerDto call(
      {@JsonKey(ignore: true) String id,
      @required String content,
      @required String author,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _AnswerDto(
      id: id,
      content: content,
      author: author,
      serverTimeStamp: serverTimeStamp,
    );
  }
}

// ignore: unused_element
const $AnswerDto = _$AnswerDtoTearOff();

mixin _$AnswerDto {
  @JsonKey(ignore: true)
  String get id;
  String get content;
  String get author;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $AnswerDtoCopyWith<AnswerDto> get copyWith;
}

abstract class $AnswerDtoCopyWith<$Res> {
  factory $AnswerDtoCopyWith(AnswerDto value, $Res Function(AnswerDto) then) =
      _$AnswerDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String content,
      String author,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class _$AnswerDtoCopyWithImpl<$Res> implements $AnswerDtoCopyWith<$Res> {
  _$AnswerDtoCopyWithImpl(this._value, this._then);

  final AnswerDto _value;
  // ignore: unused_field
  final $Res Function(AnswerDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object content = freezed,
    Object author = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      content: content == freezed ? _value.content : content as String,
      author: author == freezed ? _value.author : author as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

abstract class _$AnswerDtoCopyWith<$Res> implements $AnswerDtoCopyWith<$Res> {
  factory _$AnswerDtoCopyWith(
          _AnswerDto value, $Res Function(_AnswerDto) then) =
      __$AnswerDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String id,
      String content,
      String author,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

class __$AnswerDtoCopyWithImpl<$Res> extends _$AnswerDtoCopyWithImpl<$Res>
    implements _$AnswerDtoCopyWith<$Res> {
  __$AnswerDtoCopyWithImpl(_AnswerDto _value, $Res Function(_AnswerDto) _then)
      : super(_value, (v) => _then(v as _AnswerDto));

  @override
  _AnswerDto get _value => super._value as _AnswerDto;

  @override
  $Res call({
    Object id = freezed,
    Object content = freezed,
    Object author = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_AnswerDto(
      id: id == freezed ? _value.id : id as String,
      content: content == freezed ? _value.content : content as String,
      author: author == freezed ? _value.author : author as String,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()
class _$_AnswerDto implements _AnswerDto {
  const _$_AnswerDto(
      {@JsonKey(ignore: true) this.id,
      @required this.content,
      @required this.author,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(content != null),
        assert(author != null),
        assert(serverTimeStamp != null);

  factory _$_AnswerDto.fromJson(Map<String, dynamic> json) =>
      _$_$_AnswerDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String content;
  @override
  final String author;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString() {
    return 'AnswerDto(id: $id, content: $content, author: $author, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnswerDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$AnswerDtoCopyWith<_AnswerDto> get copyWith =>
      __$AnswerDtoCopyWithImpl<_AnswerDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AnswerDtoToJson(this);
  }
}

abstract class _AnswerDto implements AnswerDto {
  const factory _AnswerDto(
          {@JsonKey(ignore: true) String id,
          @required String content,
          @required String author,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_AnswerDto;

  factory _AnswerDto.fromJson(Map<String, dynamic> json) =
      _$_AnswerDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get content;
  @override
  String get author;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$AnswerDtoCopyWith<_AnswerDto> get copyWith;
}
