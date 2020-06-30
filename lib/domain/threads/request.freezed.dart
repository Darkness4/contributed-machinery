// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RequestTearOff {
  const _$RequestTearOff();

  _Request call(
      {@required RequestTitle title,
      @required RequestContent content,
      @required Author author}) {
    return _Request(
      title: title,
      content: content,
      author: author,
    );
  }
}

// ignore: unused_element
const $Request = _$RequestTearOff();

mixin _$Request {
  RequestTitle get title;
  RequestContent get content;
  Author get author;

  $RequestCopyWith<Request> get copyWith;
}

abstract class $RequestCopyWith<$Res> {
  factory $RequestCopyWith(Request value, $Res Function(Request) then) =
      _$RequestCopyWithImpl<$Res>;
  $Res call({RequestTitle title, RequestContent content, Author author});
}

class _$RequestCopyWithImpl<$Res> implements $RequestCopyWith<$Res> {
  _$RequestCopyWithImpl(this._value, this._then);

  final Request _value;
  // ignore: unused_field
  final $Res Function(Request) _then;

  @override
  $Res call({
    Object title = freezed,
    Object content = freezed,
    Object author = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as RequestTitle,
      content: content == freezed ? _value.content : content as RequestContent,
      author: author == freezed ? _value.author : author as Author,
    ));
  }
}

abstract class _$RequestCopyWith<$Res> implements $RequestCopyWith<$Res> {
  factory _$RequestCopyWith(_Request value, $Res Function(_Request) then) =
      __$RequestCopyWithImpl<$Res>;
  @override
  $Res call({RequestTitle title, RequestContent content, Author author});
}

class __$RequestCopyWithImpl<$Res> extends _$RequestCopyWithImpl<$Res>
    implements _$RequestCopyWith<$Res> {
  __$RequestCopyWithImpl(_Request _value, $Res Function(_Request) _then)
      : super(_value, (v) => _then(v as _Request));

  @override
  _Request get _value => super._value as _Request;

  @override
  $Res call({
    Object title = freezed,
    Object content = freezed,
    Object author = freezed,
  }) {
    return _then(_Request(
      title: title == freezed ? _value.title : title as RequestTitle,
      content: content == freezed ? _value.content : content as RequestContent,
      author: author == freezed ? _value.author : author as Author,
    ));
  }
}

class _$_Request implements _Request {
  const _$_Request(
      {@required this.title, @required this.content, @required this.author})
      : assert(title != null),
        assert(content != null),
        assert(author != null);

  @override
  final RequestTitle title;
  @override
  final RequestContent content;
  @override
  final Author author;

  @override
  String toString() {
    return 'Request(title: $title, content: $content, author: $author)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Request &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.content, content) ||
                const DeepCollectionEquality()
                    .equals(other.content, content)) &&
            (identical(other.author, author) ||
                const DeepCollectionEquality().equals(other.author, author)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(content) ^
      const DeepCollectionEquality().hash(author);

  @override
  _$RequestCopyWith<_Request> get copyWith =>
      __$RequestCopyWithImpl<_Request>(this, _$identity);
}

abstract class _Request implements Request {
  const factory _Request(
      {@required RequestTitle title,
      @required RequestContent content,
      @required Author author}) = _$_Request;

  @override
  RequestTitle get title;
  @override
  RequestContent get content;
  @override
  Author get author;
  @override
  _$RequestCopyWith<_Request> get copyWith;
}
