// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'answer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$AnswerTearOff {
  const _$AnswerTearOff();

  _Answer call(
      {@required UniqueId id,
      @required AnswerContent content,
      @required Author author,
      @required ValueDateTime published,
      @required ValueDateTime updated}) {
    return _Answer(
      id: id,
      content: content,
      author: author,
      published: published,
      updated: updated,
    );
  }
}

// ignore: unused_element
const $Answer = _$AnswerTearOff();

mixin _$Answer {
  UniqueId get id;
  AnswerContent get content;
  Author get author;
  ValueDateTime get published;
  ValueDateTime get updated;

  $AnswerCopyWith<Answer> get copyWith;
}

abstract class $AnswerCopyWith<$Res> {
  factory $AnswerCopyWith(Answer value, $Res Function(Answer) then) =
      _$AnswerCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      AnswerContent content,
      Author author,
      ValueDateTime published,
      ValueDateTime updated});
}

class _$AnswerCopyWithImpl<$Res> implements $AnswerCopyWith<$Res> {
  _$AnswerCopyWithImpl(this._value, this._then);

  final Answer _value;
  // ignore: unused_field
  final $Res Function(Answer) _then;

  @override
  $Res call({
    Object id = freezed,
    Object content = freezed,
    Object author = freezed,
    Object published = freezed,
    Object updated = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as UniqueId,
      content: content == freezed ? _value.content : content as AnswerContent,
      author: author == freezed ? _value.author : author as Author,
      published:
          published == freezed ? _value.published : published as ValueDateTime,
      updated: updated == freezed ? _value.updated : updated as ValueDateTime,
    ));
  }
}

abstract class _$AnswerCopyWith<$Res> implements $AnswerCopyWith<$Res> {
  factory _$AnswerCopyWith(_Answer value, $Res Function(_Answer) then) =
      __$AnswerCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      AnswerContent content,
      Author author,
      ValueDateTime published,
      ValueDateTime updated});
}

class __$AnswerCopyWithImpl<$Res> extends _$AnswerCopyWithImpl<$Res>
    implements _$AnswerCopyWith<$Res> {
  __$AnswerCopyWithImpl(_Answer _value, $Res Function(_Answer) _then)
      : super(_value, (v) => _then(v as _Answer));

  @override
  _Answer get _value => super._value as _Answer;

  @override
  $Res call({
    Object id = freezed,
    Object content = freezed,
    Object author = freezed,
    Object published = freezed,
    Object updated = freezed,
  }) {
    return _then(_Answer(
      id: id == freezed ? _value.id : id as UniqueId,
      content: content == freezed ? _value.content : content as AnswerContent,
      author: author == freezed ? _value.author : author as Author,
      published:
          published == freezed ? _value.published : published as ValueDateTime,
      updated: updated == freezed ? _value.updated : updated as ValueDateTime,
    ));
  }
}

class _$_Answer implements _Answer {
  const _$_Answer(
      {@required this.id,
      @required this.content,
      @required this.author,
      @required this.published,
      @required this.updated})
      : assert(id != null),
        assert(content != null),
        assert(author != null),
        assert(published != null),
        assert(updated != null);

  @override
  final UniqueId id;
  @override
  final AnswerContent content;
  @override
  final Author author;
  @override
  final ValueDateTime published;
  @override
  final ValueDateTime updated;

  @override
  String toString() {
    return 'Answer(id: $id, content: $content, author: $author, published: $published, updated: $updated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Answer &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(author) ^
      const DeepCollectionEquality().hash(published) ^
      const DeepCollectionEquality().hash(updated);

  @override
  _$AnswerCopyWith<_Answer> get copyWith =>
      __$AnswerCopyWithImpl<_Answer>(this, _$identity);
}

abstract class _Answer implements Answer {
  const factory _Answer(
      {@required UniqueId id,
      @required AnswerContent content,
      @required Author author,
      @required ValueDateTime published,
      @required ValueDateTime updated}) = _$_Answer;

  @override
  UniqueId get id;
  @override
  AnswerContent get content;
  @override
  Author get author;
  @override
  ValueDateTime get published;
  @override
  ValueDateTime get updated;
  @override
  _$AnswerCopyWith<_Answer> get copyWith;
}
