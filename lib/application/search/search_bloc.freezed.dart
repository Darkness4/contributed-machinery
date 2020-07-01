// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  FilterChanged filterChanged(String filter) {
    return FilterChanged(
      filter,
    );
  }
}

// ignore: unused_element
const $SearchEvent = _$SearchEventTearOff();

mixin _$SearchEvent {
  String get filter;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result filterChanged(String filter),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result filterChanged(String filter),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result filterChanged(FilterChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result filterChanged(FilterChanged value),
    @required Result orElse(),
  });

  $SearchEventCopyWith<SearchEvent> get copyWith;
}

abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
  $Res call({String filter});
}

class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;

  @override
  $Res call({
    Object filter = freezed,
  }) {
    return _then(_value.copyWith(
      filter: filter == freezed ? _value.filter : filter as String,
    ));
  }
}

abstract class $FilterChangedCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory $FilterChangedCopyWith(
          FilterChanged value, $Res Function(FilterChanged) then) =
      _$FilterChangedCopyWithImpl<$Res>;
  @override
  $Res call({String filter});
}

class _$FilterChangedCopyWithImpl<$Res> extends _$SearchEventCopyWithImpl<$Res>
    implements $FilterChangedCopyWith<$Res> {
  _$FilterChangedCopyWithImpl(
      FilterChanged _value, $Res Function(FilterChanged) _then)
      : super(_value, (v) => _then(v as FilterChanged));

  @override
  FilterChanged get _value => super._value as FilterChanged;

  @override
  $Res call({
    Object filter = freezed,
  }) {
    return _then(FilterChanged(
      filter == freezed ? _value.filter : filter as String,
    ));
  }
}

class _$FilterChanged implements FilterChanged {
  const _$FilterChanged(this.filter) : assert(filter != null);

  @override
  final String filter;

  @override
  String toString() {
    return 'SearchEvent.filterChanged(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FilterChanged &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @override
  $FilterChangedCopyWith<FilterChanged> get copyWith =>
      _$FilterChangedCopyWithImpl<FilterChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result filterChanged(String filter),
  }) {
    assert(filterChanged != null);
    return filterChanged(filter);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result filterChanged(String filter),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (filterChanged != null) {
      return filterChanged(filter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result filterChanged(FilterChanged value),
  }) {
    assert(filterChanged != null);
    return filterChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result filterChanged(FilterChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (filterChanged != null) {
      return filterChanged(this);
    }
    return orElse();
  }
}

abstract class FilterChanged implements SearchEvent {
  const factory FilterChanged(String filter) = _$FilterChanged;

  @override
  String get filter;
  @override
  $FilterChangedCopyWith<FilterChanged> get copyWith;
}

class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _SearchState call(String filter) {
    return _SearchState(
      filter,
    );
  }
}

// ignore: unused_element
const $SearchState = _$SearchStateTearOff();

mixin _$SearchState {
  String get filter;

  $SearchStateCopyWith<SearchState> get copyWith;
}

abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call({String filter});
}

class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object filter = freezed,
  }) {
    return _then(_value.copyWith(
      filter: filter == freezed ? _value.filter : filter as String,
    ));
  }
}

abstract class _$SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(
          _SearchState value, $Res Function(_SearchState) then) =
      __$SearchStateCopyWithImpl<$Res>;
  @override
  $Res call({String filter});
}

class __$SearchStateCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(
      _SearchState _value, $Res Function(_SearchState) _then)
      : super(_value, (v) => _then(v as _SearchState));

  @override
  _SearchState get _value => super._value as _SearchState;

  @override
  $Res call({
    Object filter = freezed,
  }) {
    return _then(_SearchState(
      filter == freezed ? _value.filter : filter as String,
    ));
  }
}

class _$_SearchState implements _SearchState {
  const _$_SearchState(this.filter) : assert(filter != null);

  @override
  final String filter;

  @override
  String toString() {
    return 'SearchState(filter: $filter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SearchState &&
            (identical(other.filter, filter) ||
                const DeepCollectionEquality().equals(other.filter, filter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(filter);

  @override
  _$SearchStateCopyWith<_SearchState> get copyWith =>
      __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(String filter) = _$_SearchState;

  @override
  String get filter;
  @override
  _$SearchStateCopyWith<_SearchState> get copyWith;
}
