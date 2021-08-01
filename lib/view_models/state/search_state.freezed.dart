// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  SearchStateData call({int currentIndex = 0, String? keyWord = null}) {
    return SearchStateData(
      currentIndex: currentIndex,
      keyWord: keyWord,
    );
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  int get currentIndex => throw _privateConstructorUsedError;
  String? get keyWord => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
  $Res call({int currentIndex, String? keyWord});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;

  @override
  $Res call({
    Object? currentIndex = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(_value.copyWith(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $SearchStateDataCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory $SearchStateDataCopyWith(
          SearchStateData value, $Res Function(SearchStateData) then) =
      _$SearchStateDataCopyWithImpl<$Res>;
  @override
  $Res call({int currentIndex, String? keyWord});
}

/// @nodoc
class _$SearchStateDataCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateDataCopyWith<$Res> {
  _$SearchStateDataCopyWithImpl(
      SearchStateData _value, $Res Function(SearchStateData) _then)
      : super(_value, (v) => _then(v as SearchStateData));

  @override
  SearchStateData get _value => super._value as SearchStateData;

  @override
  $Res call({
    Object? currentIndex = freezed,
    Object? keyWord = freezed,
  }) {
    return _then(SearchStateData(
      currentIndex: currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      keyWord: keyWord == freezed
          ? _value.keyWord
          : keyWord // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchStateData implements SearchStateData {
  _$SearchStateData({this.currentIndex = 0, this.keyWord = null});

  @JsonKey(defaultValue: 0)
  @override
  final int currentIndex;
  @JsonKey(defaultValue: null)
  @override
  final String? keyWord;

  @override
  String toString() {
    return 'SearchState(currentIndex: $currentIndex, keyWord: $keyWord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SearchStateData &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)) &&
            (identical(other.keyWord, keyWord) ||
                const DeepCollectionEquality().equals(other.keyWord, keyWord)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentIndex) ^
      const DeepCollectionEquality().hash(keyWord);

  @JsonKey(ignore: true)
  @override
  $SearchStateDataCopyWith<SearchStateData> get copyWith =>
      _$SearchStateDataCopyWithImpl<SearchStateData>(this, _$identity);
}

abstract class SearchStateData implements SearchState {
  factory SearchStateData({int currentIndex, String? keyWord}) =
      _$SearchStateData;

  @override
  int get currentIndex => throw _privateConstructorUsedError;
  @override
  String? get keyWord => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $SearchStateDataCopyWith<SearchStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
