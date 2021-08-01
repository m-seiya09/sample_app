// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'result_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResultStateTearOff {
  const _$ResultStateTearOff();

  ResultStateData call(
      {int currentPage = 1,
      List<ArticleData> articles = const <ArticleData>[]}) {
    return ResultStateData(
      currentPage: currentPage,
      articles: articles,
    );
  }
}

/// @nodoc
const $ResultState = _$ResultStateTearOff();

/// @nodoc
mixin _$ResultState {
  int get currentPage => throw _privateConstructorUsedError;
  List<ArticleData> get articles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultStateCopyWith<ResultState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultStateCopyWith<$Res> {
  factory $ResultStateCopyWith(
          ResultState value, $Res Function(ResultState) then) =
      _$ResultStateCopyWithImpl<$Res>;
  $Res call({int currentPage, List<ArticleData> articles});
}

/// @nodoc
class _$ResultStateCopyWithImpl<$Res> implements $ResultStateCopyWith<$Res> {
  _$ResultStateCopyWithImpl(this._value, this._then);

  final ResultState _value;
  // ignore: unused_field
  final $Res Function(ResultState) _then;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleData>,
    ));
  }
}

/// @nodoc
abstract class $ResultStateDataCopyWith<$Res>
    implements $ResultStateCopyWith<$Res> {
  factory $ResultStateDataCopyWith(
          ResultStateData value, $Res Function(ResultStateData) then) =
      _$ResultStateDataCopyWithImpl<$Res>;
  @override
  $Res call({int currentPage, List<ArticleData> articles});
}

/// @nodoc
class _$ResultStateDataCopyWithImpl<$Res>
    extends _$ResultStateCopyWithImpl<$Res>
    implements $ResultStateDataCopyWith<$Res> {
  _$ResultStateDataCopyWithImpl(
      ResultStateData _value, $Res Function(ResultStateData) _then)
      : super(_value, (v) => _then(v as ResultStateData));

  @override
  ResultStateData get _value => super._value as ResultStateData;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? articles = freezed,
  }) {
    return _then(ResultStateData(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<ArticleData>,
    ));
  }
}

/// @nodoc

class _$ResultStateData implements ResultStateData {
  const _$ResultStateData(
      {this.currentPage = 1, this.articles = const <ArticleData>[]});

  @JsonKey(defaultValue: 1)
  @override
  final int currentPage;
  @JsonKey(defaultValue: const <ArticleData>[])
  @override
  final List<ArticleData> articles;

  @override
  String toString() {
    return 'ResultState(currentPage: $currentPage, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResultStateData &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.articles, articles) ||
                const DeepCollectionEquality()
                    .equals(other.articles, articles)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(articles);

  @JsonKey(ignore: true)
  @override
  $ResultStateDataCopyWith<ResultStateData> get copyWith =>
      _$ResultStateDataCopyWithImpl<ResultStateData>(this, _$identity);
}

abstract class ResultStateData implements ResultState {
  const factory ResultStateData({int currentPage, List<ArticleData> articles}) =
      _$ResultStateData;

  @override
  int get currentPage => throw _privateConstructorUsedError;
  @override
  List<ArticleData> get articles => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ResultStateDataCopyWith<ResultStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
