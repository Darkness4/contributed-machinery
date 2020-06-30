// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'answser_presentation_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AnswerPrimitiveTearOff {
  const _$AnswerPrimitiveTearOff();

  _AnswerPrimitive call(
      {@required UniqueId id,
      @required String content,
      @required String author}) {
    return _AnswerPrimitive(
      id: id,
      content: content,
      author: author,
    );
  }
}

// ignore: unused_element
const $AnswerPrimitive = _$AnswerPrimitiveTearOff();

mixin _$AnswerPrimitive {
  UniqueId get id;
  String get content;
  String get author;

  $AnswerPrimitiveCopyWith<AnswerPrimitive> get copyWith;
}

abstract class $AnswerPrimitiveCopyWith<$Res> {
  factory $AnswerPrimitiveCopyWith(
          AnswerPrimitive value, $Res Function(AnswerPrimitive) then) =
      _$AnswerPrimitiveCopyWithImpl<$Res>;
  $Res call({UniqueId id, String content, String author});
}

class _$AnswerPrimitiveCopyWithImpl<$Res>
    implements $AnswerPrimitiveCopyWith<$Res> {
  _$AnswerPrimitiveCopyWithImpl(this._value, this._then);

  final AnswerPrimitive _value;
  // ignore: unused_field
  final $Res Function(AnswerPrimitive) _then;

  @override
  $Res call({
    Object id = freezed,
    Object content = freezed,
    Object author = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      content: content == freezed ? _value.content : content as String,
      author: author == freezed ? _value.author : author as String,
    ));
  }
}

abstract class _$AnswerPrimitiveCopyWith<$Res>
    implements $AnswerPrimitiveCopyWith<$Res> {
  factory _$AnswerPrimitiveCopyWith(
          _AnswerPrimitive value, $Res Function(_AnswerPrimitive) then) =
      __$AnswerPrimitiveCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId id, String content, String author});
}

class __$AnswerPrimitiveCopyWithImpl<$Res>
    extends _$AnswerPrimitiveCopyWithImpl<$Res>
    implements _$AnswerPrimitiveCopyWith<$Res> {
  __$AnswerPrimitiveCopyWithImpl(
      _AnswerPrimitive _value, $Res Function(_AnswerPrimitive) _then)
      : super(_value, (v) => _then(v as _AnswerPrimitive));

  @override
  _AnswerPrimitive get _value => super._value as _AnswerPrimitive;

  @override
  $Res call({
    Object id = freezed,
    Object content = freezed,
    Object author = freezed,
  }) {
    return _then(_AnswerPrimitive(
      id: id == freezed ? _value.id : id as UniqueId,
      content: content == freezed ? _value.content : content as String,
      author: author == freezed ? _value.author : author as String,
    ));
  }
}

class _$_AnswerPrimitive
    with DiagnosticableTreeMixin
    implements _AnswerPrimitive {
  const _$_AnswerPrimitive(
      {@required this.id, @required this.content, @required this.author})
      : assert(id != null),
        assert(content != null),
        assert(author != null);

  @override
  final UniqueId id;
  @override
  final String content;
  @override
  final String author;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnswerPrimitive(id: $id, content: $content, author: $author)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnswerPrimitive'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('content', content))
      ..add(DiagnosticsProperty('author', author));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AnswerPrimitive &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(author);

  @override
  _$AnswerPrimitiveCopyWith<_AnswerPrimitive> get copyWith =>
      __$AnswerPrimitiveCopyWithImpl<_AnswerPrimitive>(this, _$identity);
}

abstract class _AnswerPrimitive implements AnswerPrimitive {
  const factory _AnswerPrimitive(
      {@required UniqueId id,
      @required String content,
      @required String author}) = _$_AnswerPrimitive;

  @override
  UniqueId get id;
  @override
  String get content;
  @override
  String get author;
  @override
  _$AnswerPrimitiveCopyWith<_AnswerPrimitive> get copyWith;
}
