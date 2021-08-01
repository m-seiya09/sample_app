// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoriteStateTearOff {
  const _$FavoriteStateTearOff();

  FavoriteStateData call(
      {List<String> ids = const <String>[],
      List<ArticleData> articles = const <ArticleData>[]}) {
    return FavoriteStateData(
      ids: ids,
      articles: articles,
    );
  }
}

/// @nodoc
const $FavoriteState = _$FavoriteStateTearOff();

/// @nodoc
mixin _$FavoriteState {
  List<String> get ids => throw _privateConstructorUsedError;
  List<ArticleData> get articles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteStateCopyWith<FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res>;
  $Res call({List<String> ids, List<ArticleData> articles});
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  final FavoriteState _value;
  // ignore: unused_field
  final $Res Function(FavoriteState) _then;

  @override
  $Res call({
    Object? ids = freezed,
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      ids: ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleData>,
    ));
  }
}

/// @nodoc
abstract class $FavoriteStateDataCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateDataCopyWith(
          FavoriteStateData value, $Res Function(FavoriteStateData) then) =
      _$FavoriteStateDataCopyWithImpl<$Res>;
  @override
  $Res call({List<String> ids, List<ArticleData> articles});
}

/// @nodoc
class _$FavoriteStateDataCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements $FavoriteStateDataCopyWith<$Res> {
  _$FavoriteStateDataCopyWithImpl(
      FavoriteStateData _value, $Res Function(FavoriteStateData) _then)
      : super(_value, (v) => _then(v as FavoriteStateData));

  @override
  FavoriteStateData get _value => super._value as FavoriteStateData;

  @override
  $Res call({
    Object? ids = freezed,
    Object? articles = freezed,
  }) {
    return _then(FavoriteStateData(
      ids: ids == freezed
          ? _value.ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<String>,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleData>,
    ));
  }
}

/// @nodoc

class _$FavoriteStateData implements FavoriteStateData {
  const _$FavoriteStateData(
      {this.ids = const <String>[], this.articles = const <ArticleData>[]});

  @JsonKey(defaultValue: const <String>[])
  @override
  final List<String> ids;
  @JsonKey(defaultValue: const <ArticleData>[])
  @override
  final List<ArticleData> articles;

  @override
  String toString() {
    return 'FavoriteState(ids: $ids, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FavoriteStateData &&
            (identical(other.ids, ids) ||
                const DeepCollectionEquality().equals(other.ids, ids)) &&
            (identical(other.articles, articles) ||
                const DeepCollectionEquality()
                    .equals(other.articles, articles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(ids) ^
      const DeepCollectionEquality().hash(articles);

  @JsonKey(ignore: true)
  @override
  $FavoriteStateDataCopyWith<FavoriteStateData> get copyWith =>
      _$FavoriteStateDataCopyWithImpl<FavoriteStateData>(this, _$identity);
}

abstract class FavoriteStateData implements FavoriteState {
  const factory FavoriteStateData(
      {List<String> ids, List<ArticleData> articles}) = _$FavoriteStateData;

  @override
  List<String> get ids => throw _privateConstructorUsedError;
  @override
  List<ArticleData> get articles => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $FavoriteStateDataCopyWith<FavoriteStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
