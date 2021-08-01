// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'result_vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResultVmTearOff {
  const _$ResultVmTearOff();

  ResultVmData call(
      {int currentPage = 0,
      List<ArticleData> articles = const <ArticleData>[]}) {
    return ResultVmData(
      currentPage: currentPage,
      articles: articles,
    );
  }
}

/// @nodoc
const $ResultVm = _$ResultVmTearOff();

/// @nodoc
mixin _$ResultVm {
  int get currentPage => throw _privateConstructorUsedError;
  List<ArticleData> get articles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultVmCopyWith<ResultVm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultVmCopyWith<$Res> {
  factory $ResultVmCopyWith(ResultVm value, $Res Function(ResultVm) then) =
      _$ResultVmCopyWithImpl<$Res>;
  $Res call({int currentPage, List<ArticleData> articles});
}

/// @nodoc
class _$ResultVmCopyWithImpl<$Res> implements $ResultVmCopyWith<$Res> {
  _$ResultVmCopyWithImpl(this._value, this._then);

  final ResultVm _value;
  // ignore: unused_field
  final $Res Function(ResultVm) _then;

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
abstract class $ResultVmDataCopyWith<$Res> implements $ResultVmCopyWith<$Res> {
  factory $ResultVmDataCopyWith(
          ResultVmData value, $Res Function(ResultVmData) then) =
      _$ResultVmDataCopyWithImpl<$Res>;
  @override
  $Res call({int currentPage, List<ArticleData> articles});
}

/// @nodoc
class _$ResultVmDataCopyWithImpl<$Res> extends _$ResultVmCopyWithImpl<$Res>
    implements $ResultVmDataCopyWith<$Res> {
  _$ResultVmDataCopyWithImpl(
      ResultVmData _value, $Res Function(ResultVmData) _then)
      : super(_value, (v) => _then(v as ResultVmData));

  @override
  ResultVmData get _value => super._value as ResultVmData;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? articles = freezed,
  }) {
    return _then(ResultVmData(
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

class _$ResultVmData implements ResultVmData {
  const _$ResultVmData(
      {this.currentPage = 0, this.articles = const <ArticleData>[]});

  @JsonKey(defaultValue: 0)
  @override
  final int currentPage;
  @JsonKey(defaultValue: const <ArticleData>[])
  @override
  final List<ArticleData> articles;

  @override
  String toString() {
    return 'ResultVm(currentPage: $currentPage, articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResultVmData &&
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
  $ResultVmDataCopyWith<ResultVmData> get copyWith =>
      _$ResultVmDataCopyWithImpl<ResultVmData>(this, _$identity);
}

abstract class ResultVmData implements ResultVm {
  const factory ResultVmData({int currentPage, List<ArticleData> articles}) =
      _$ResultVmData;

  @override
  int get currentPage => throw _privateConstructorUsedError;
  @override
  List<ArticleData> get articles => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ResultVmDataCopyWith<ResultVmData> get copyWith =>
      throw _privateConstructorUsedError;
}
